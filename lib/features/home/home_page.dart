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

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.home),
        actions: [
          IconButton(
            onPressed: () => context.push('/settings'),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 64),
            SizedBox(height: 16),
            Text(
              'Welcome to Flutter Vibe Template!',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                showToast(
                  "Hi there, this is a toast message",
                  position: ToastPosition.bottom,
                );
              },
              child: Text('Show Toast'),
            ),
          ],
        ),
      ),
    );
  }
}
