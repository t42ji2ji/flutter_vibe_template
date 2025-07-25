import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibe_template/utils/space_util.dart';

import '../models/auth_state.dart';
import '../providers/auth_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAuthStatus();
    });
  }

  Future<void> _checkAuthStatus() async {
    // Check auth status
    await ref.read(authNotifierProvider.notifier).checkAuthStatus();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo/icon
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(Icons.star, size: 64, color: Colors.white),
            ),
            h32,

            // Loading indicator
            authState.when(
              initial: () => const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              loading: () => const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              authenticated: (_, __, ___, ____) =>
                  const Icon(Icons.check_circle, color: Colors.white, size: 32),
              unauthenticated: (isSigningIn) => const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              error: (_) =>
                  const Icon(Icons.error, color: Colors.white, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
