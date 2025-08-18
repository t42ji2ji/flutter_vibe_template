import 'package:freezed_annotation/freezed_annotation.dart';

part 'dot_env_model.freezed.dart';

@freezed
abstract class DotEnvModel with _$DotEnvModel {
  const factory DotEnvModel({
    required String supabaseUrl,
    required String supabaseAnonKey,
    required String revenueCatAppleProductId,
    required String privacyPolicyUrl,
    required String termsOfServiceUrl,
  }) = _DotEnvModel;
}
