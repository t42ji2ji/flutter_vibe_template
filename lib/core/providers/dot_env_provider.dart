import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibe_template/core/model/dot_env_model.dart';

final dotEnvProvider = Provider<DotEnvModel>((ref) {
  return DotEnvModel(
    supabaseUrl: dotenv.env['SUPABASE_URL']!,
    supabaseAnonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    revenueCatAppleProductId: dotenv.env['REVENUE_CAT_APPLE_PRODUCT_ID']!,
    privacyPolicyUrl: dotenv.env['PRIVACY_POLICY_URL']!,
    termsOfServiceUrl: dotenv.env['TERMS_OF_SERVICE_URL']!,
  );
});
