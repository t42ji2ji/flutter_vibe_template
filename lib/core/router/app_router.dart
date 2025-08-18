import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibe_template/core/providers/auth_notifier.dart';
import 'package:flutter_vibe_template/features/auth/models/auth_state.dart';
import 'package:flutter_vibe_template/features/auth/providers/auth_provider.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/splash_screen.dart';
import '../../features/home/home_page.dart';
import '../../features/settings/settings_page.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authNotifierWrapper = ref.watch(authNotifierWrapperProvider);

  return GoRouter(
    initialLocation: '/',
    refreshListenable: authNotifierWrapper,
    redirect: (context, state) {
      final authState = ref.read(authNotifierProvider);
      final isGoingToSplash = state.matchedLocation == '/splash';
      final isGoingToLogin = state.matchedLocation == '/login';

      return authState.when(
        initial: () {
          // Stay on splash while checking auth status
          return isGoingToSplash ? null : '/splash';
        },
        loading: () {
          // Stay on splash while loading
          return isGoingToSplash ? null : '/splash';
        },
        authenticated: (_, __, ___, ____) {
          // If authenticated, go to home (unless already there)
          if (isGoingToSplash || isGoingToLogin) {
            return '/';
          }
          return null;
        },
        unauthenticated: (isSigningIn) {
          // If not authenticated, go to login (unless already there)
          if (isGoingToSplash) {
            return '/login';
          }
          return isGoingToLogin ? null : '/login';
        },
        error: (_) {
          // On error, go to login (unless already there)
          if (isGoingToSplash) {
            return '/login';
          }
          return isGoingToLogin ? null : '/login';
        },
      );
    },
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        ),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        ),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
  );
});
