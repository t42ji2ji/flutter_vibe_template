import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vibe_template/core/providers/dot_env_provider.dart';
import 'package:flutter_vibe_template/core/providers/locale_provider.dart';
import 'package:flutter_vibe_template/core/providers/theme_provider.dart';
import 'package:flutter_vibe_template/l10n/generated/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final themeMode = ref.watch(themeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);
    final dotEnv = ref.watch(dotEnvProvider);

    String themeModeToString(ThemeMode mode) {
      switch (mode) {
        case ThemeMode.light:
          return l10n.light;
        case ThemeMode.dark:
          return l10n.dark;
        case ThemeMode.system:
          return l10n.system;
      }
    }

    String localeToLanguage(Locale? locale) {
      if (locale == null) {
        return l10n.system;
      }
      switch (locale.languageCode) {
        case 'en':
          return 'English';
        case 'zh':
          return '中文';
        default:
          return l10n.system;
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: themeMode.when(
        data: (theme) => locale.when(
          data: (loc) => ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.language),
                title: Text(l10n.language),
                subtitle: Text(localeToLanguage(loc)),
                onTap: () => _showLanguageDialog(context, ref),
              ),
              ListTile(
                leading: const Icon(Icons.palette),
                title: Text(l10n.theme),
                subtitle: Text(themeModeToString(theme)),
                onTap: () => _showThemeDialog(context, ref),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.description),
                title: Text(l10n.termsOfService),
                trailing: const Icon(Icons.open_in_new),
                onTap: () => _launchUrl(dotEnv.termsOfServiceUrl),
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: Text(l10n.privacyPolicy),
                trailing: const Icon(Icons.open_in_new),
                onTap: () => _launchUrl(dotEnv.privacyPolicyUrl),
              ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.language),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                ref
                    .read(localeNotifierProvider.notifier)
                    .setLocale(const Locale('en'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('中文'),
              onTap: () {
                ref
                    .read(localeNotifierProvider.notifier)
                    .setLocale(const Locale('zh'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(l10n.system),
              onTap: () {
                ref.read(localeNotifierProvider.notifier).setLocale(null);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showThemeDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.theme),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(l10n.light),
              onTap: () {
                ref
                    .read(themeNotifierProvider.notifier)
                    .setThemeMode(ThemeMode.light);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(l10n.dark),
              onTap: () {
                ref
                    .read(themeNotifierProvider.notifier)
                    .setThemeMode(ThemeMode.dark);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(l10n.system),
              onTap: () {
                ref
                    .read(themeNotifierProvider.notifier)
                    .setThemeMode(ThemeMode.system);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }
}
