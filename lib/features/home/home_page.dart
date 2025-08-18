import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibe_template/l10n/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              _buildAppBar(context, theme),
              const SizedBox(height: 60),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildLogo(theme),
                    const SizedBox(height: 32),
                    _buildWelcomeText(theme),
                    const SizedBox(height: 48),
                    _buildActionCard(context, theme),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Vibe',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.5,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () => context.push('/settings'),
              icon: Icon(
                Icons.settings_outlined,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo(ThemeData theme) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.secondary,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Icon(
        Icons.code_rounded,
        size: 48,
        color: theme.colorScheme.onPrimary,
      ),
    );
  }

  Widget _buildWelcomeText(ThemeData theme) {
    return Column(
      children: [
        Text(
          'Flutter Vibe Template',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
            letterSpacing: -1.0,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'A modern, minimalist template for your next Flutter project',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.7),
            letterSpacing: 0.1,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildActionCard(BuildContext context, ThemeData theme) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.notifications_none_rounded,
            size: 32,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            'Try the Toast',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Test the elegant toast notification system',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          FilledButton.tonal(
            onPressed: () {
              showToast(
                "✨ Beautiful toast notification",
                position: ToastPosition.bottom,
              );
            },
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Show Toast'),
          ),
        ],
      ),
    );
  }
}
