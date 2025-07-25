import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthState;

import '../models/auth_state.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState.initial();
  }

  Future<void> checkAuthStatus() async {
    final supabase = Supabase.instance.client;
    final session = supabase.auth.currentSession;
    
    if (session != null) {
      state = AuthState.authenticated(
        userId: session.user.id,
        email: session.user.email ?? '',
        fullName: session.user.userMetadata?['full_name'] as String?,
      );
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> signInWithApple() async {
    // Set signing in state for button loading
    state = state.maybeWhen(
      unauthenticated: (isSigningIn) => const AuthState.unauthenticated(isSigningIn: true),
      orElse: () => const AuthState.unauthenticated(isSigningIn: true),
    );
    
    try {
      final supabase = Supabase.instance.client;
      final rawNonce = supabase.auth.generateRawNonce();
      final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();
      
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: hashedNonce,
      );

      final idToken = credential.identityToken;
      if (idToken == null) {
        throw Exception('No identity token received');
      }

      final response = await supabase.auth.signInWithIdToken(
        provider: OAuthProvider.apple,
        idToken: idToken,
        nonce: rawNonce,
      );

      if (response.user != null) {
        state = AuthState.authenticated(
          userId: response.user!.id,
          email: response.user!.email ?? '',
          fullName: credential.givenName != null && credential.familyName != null
              ? '${credential.givenName} ${credential.familyName}'
              : null,
        );
      } else {
        state = const AuthState.error('Sign in failed');
      }
    } catch (e) {
      state = AuthState.error('Sign in failed: ${e.toString()}');
    }
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    
    try {
      final supabase = Supabase.instance.client;
      await supabase.auth.signOut();
      state = const AuthState.unauthenticated();
    } catch (e) {
      state = AuthState.error('Sign out failed: ${e.toString()}');
    }
  }
}