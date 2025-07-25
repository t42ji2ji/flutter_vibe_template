import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({
    required String userId,
    required String email,
    String? fullName,
    @Default(false) bool isSigningIn,
  }) = _Authenticated;
  const factory AuthState.unauthenticated({
    @Default(false) bool isSigningIn,
  }) = _Unauthenticated;
  const factory AuthState.error(String message) = _Error;
}