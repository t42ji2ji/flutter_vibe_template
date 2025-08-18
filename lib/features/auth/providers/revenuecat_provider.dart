import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibe_template/core/providers/dot_env_provider.dart';
import 'package:flutter_vibe_template/features/auth/providers/auth_provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/revenuecat_state.dart';

part 'revenuecat_provider.g.dart';

const String proEntitlementId = "Pro";

enum RevenueCatEntitlement { pro, zc }

@Riverpod(keepAlive: true)
class RevenucatService extends _$RevenucatService {
  @override
  Future<RevenueCatState> build() async {
    ref.watch(authNotifierProvider);
    init();
    return const RevenueCatState();
  }

  Future<void> init() async {
    if (kDebugMode) {
      await Purchases.setLogLevel(LogLevel.debug);
    }
    final dotEnv = ref.read(dotEnvProvider);
    final supabase = Supabase.instance.client;
    final user = supabase.auth.currentUser;
    if (user == null) {
      return;
    }

    PurchasesConfiguration configuration;
    if (Platform.isAndroid) {
      configuration = PurchasesConfiguration("");
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(dotEnv.revenueCatAppleProductId);
    } else {
      throw Exception("Unsupported platform");
    }

    configuration.appUserID = user.id;
    await Purchases.configure(configuration);
    Purchases.removeCustomerInfoUpdateListener(purchasesListener);
    final isConfigured = await Purchases.isConfigured;
    if (!isConfigured) {
      throw Exception("Failed to configure RevenueCat");
    }
    final purchaserInfo = await Purchases.getOfferings();
    log(purchaserInfo.toString());
    final virtualCurrencies = await Purchases.getVirtualCurrencies();
    final isPro = await checkIsPro();

    state = AsyncValue.data(
      RevenueCatState(
        virtualCurrencies: virtualCurrencies,
        isInitialized: true,
        isPro: isPro,
        offerings: purchaserInfo,
      ),
    );

    Purchases.addCustomerInfoUpdateListener(purchasesListener);
  }

  void purchasesListener(CustomerInfo customerInfo) async {
    log("purchasesListener: $customerInfo");
    final isPro = customerInfo.entitlements.active.containsKey(
      proEntitlementId,
    );
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(isPro: isPro));
      await refreshVirtualCurrency();
    }
  }

  Future<void> refreshVirtualCurrency() async {
    // NOTE: Virtual currencies are not yet supported in Flutter web and
    // are only available for Flutter on iOS and Android.
    await Purchases.invalidateVirtualCurrenciesCache();
    // Fetch virtual currencies
    try {
      final virtualCurrencies = await Purchases.getVirtualCurrencies();
      log(virtualCurrencies.toString());
      if (state.hasValue) {
        state = AsyncValue.data(
          state.requireValue.copyWith(virtualCurrencies: virtualCurrencies),
        );
      }
      log("ZC Balance: ${getBalance()}");
    } catch (error) {
      log(error.toString());
      if (state.hasValue) {
        state = AsyncValue.data(
          state.requireValue.copyWith(error: error.toString()),
        );
      }
    }
  }

  int getBalance() {
    return state.maybeWhen(data: (data) => data.pointBalance, orElse: () => 0);
  }

  bool getIsPro() {
    return state.maybeWhen(data: (data) => data.isPro, orElse: () => false);
  }

  Future<bool> checkIsPro() async {
    try {
      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      final isPro = customerInfo.entitlements.active.containsKey(
        proEntitlementId,
      );
      return isPro;
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool?> showPaywall(RevenueCatEntitlement entitlement) async {
    final isConfigured = await Purchases.isConfigured;
    if (!isConfigured) {
      await init();
    }
    final paywallResult = await RevenueCatUI.presentPaywall(
      offering: state.value?.offerings?.all[entitlement.name],
    );
    log(paywallResult.toString());
    return paywallResult == PaywallResult.purchased ||
        paywallResult == PaywallResult.restored;
  }
}
