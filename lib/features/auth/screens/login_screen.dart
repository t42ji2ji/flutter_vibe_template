import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/generated/app_localizations.dart';
import '../models/auth_state.dart';
import '../providers/auth_provider.dart';
import '../providers/onboarding_provider.dart';
import '../widgets/apple_sign_in_button.dart';
import '../widgets/onboarding_page.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingPages = ref.watch(onboardingPagesProvider);
    final currentPage = ref.watch(onboardingStateProvider);
    final authState = ref.watch(authNotifierProvider);
    final l10n = AppLocalizations.of(context);

    // Listen to auth state changes for error handling
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        authenticated: (userId, email, fullName, isSigningIn) {},
        unauthenticated: (isSigningIn) {},
        error: (message) {
          log(message, name: 'Auth Error');
        },
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Page indicator
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingPages.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPage == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey.withValues(alpha: 0.3),
                    ),
                  ),
                ),
              ),
            ),
            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  ref.read(onboardingStateProvider.notifier).setPage(index);
                },
                itemCount: onboardingPages.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(data: onboardingPages[index]);
                },
              ),
            ),
            // Bottom section with navigation and sign-in
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Navigation buttons
                  if (currentPage < onboardingPages.length - 1) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Jump to last page
                            final lastIndex = onboardingPages.length - 1;
                            _pageController.animateToPage(
                              lastIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            ref
                                .read(onboardingStateProvider.notifier)
                                .setPage(lastIndex);
                          },
                          child: const Text('Skip'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final nextIndex = currentPage + 1;
                            _pageController.animateToPage(
                              nextIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            ref
                                .read(onboardingStateProvider.notifier)
                                .nextPage();
                          },
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ] else ...[
                    // Apple Sign In button on last page
                    authState.when(
                      initial: () => const AppleSignInButton(),
                      loading: () => const CircularProgressIndicator(),
                      authenticated: (_, __, ___, ____) =>
                          const SizedBox.shrink(),
                      unauthenticated: (isSigningIn) =>
                          const AppleSignInButton(),
                      error: (_) => const AppleSignInButton(),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
