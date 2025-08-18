import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'revenuecat_state.freezed.dart';

const String zcEntitlementId = "zc";

@freezed
abstract class RevenueCatState with _$RevenueCatState {
  const factory RevenueCatState({
    @Default(false) bool isPro,
    VirtualCurrencies? virtualCurrencies,
    @Default(false) bool isInitialized,
    Offerings? offerings,
    String? error,
  }) = _RevenueCatState;

  const RevenueCatState._();

  int get pointBalance {
    return virtualCurrencies?.all[zcEntitlementId]?.balance ?? 0;
  }
}
