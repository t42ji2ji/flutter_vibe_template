import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../providers/auth_provider.dart';

class AppleSignInButton extends ConsumerWidget {
  const AppleSignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInWithAppleButton(
      onPressed: () async {
        await ref.read(authNotifierProvider.notifier).signInWithApple();
      },
      text: 'Continue with Apple',
      height: 50,
      style: SignInWithAppleButtonStyle.black,
    );
  }
}