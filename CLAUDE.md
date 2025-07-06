# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Essential Commands

### Development & Testing
- `flutter run` - Start the app in development mode with hot reload
- `flutter run -d chrome` - Run the app in Chrome browser (web)
- `flutter run -d ios` - Run on iOS simulator
- `flutter run -d android` - Run on Android emulator
- `flutter test` - Run all widget tests
- `flutter test test/widget_test.dart` - Run a specific test file

### Code Generation
- `dart run build_runner build` - Generate code for Riverpod and other annotations
- `dart run build_runner build --delete-conflicting-outputs` - Force regenerate all generated files
- `dart run build_runner watch` - Watch for changes and auto-generate code

### Internationalization
- `flutter gen-l10n` - Generate localization files from ARB files (automatically run with `flutter run`)

### Code Quality & Analysis
- `flutter analyze` - Run static analysis and check for lint issues
- `flutter format .` - Format all Dart code according to style guidelines
- `dart fix --apply` - Apply automatic fixes for lint issues

### Build & Deploy
- `flutter build apk` - Build Android APK for release
- `flutter build ios` - Build iOS app for release
- `flutter build web` - Build web version for deployment
- `flutter clean` - Clean build artifacts and dependencies
- `flutter pub get` - Install/update dependencies from pubspec.yaml
- `flutter pub upgrade` - Upgrade dependencies to latest compatible versions

## Project Structure

This is a production-ready Flutter template with modern architecture patterns:

### Core Structure
```
lib/
├── main.dart                 # App entry point with providers setup
├── core/                     # Core functionality
│   ├── providers/           # Riverpod state management
│   ├── router/              # GoRouter navigation setup
│   ├── services/            # HTTP client and external services
│   ├── theme/               # FlexColorScheme theming
│   └── widgets/             # Reusable UI components
├── features/                # Feature-based organization
│   ├── home/               # Home page feature
│   └── settings/           # Settings page feature
├── l10n/                   # Internationalization files
│   ├── app_en.arb         # English translations
│   └── app_zh.arb         # Chinese translations
└── l10n.yaml              # Localization configuration
```

### Assets
- `assets/images/` - Image assets
- `assets/icons/` - Icon assets

## Architecture

This template uses modern Flutter architecture patterns:

### State Management
- **Riverpod** with code generation for type-safe providers
- **riverpod_annotation** for generating providers automatically
- Theme and locale state persisted with SharedPreferences

### Navigation
- **GoRouter** for declarative routing
- Type-safe navigation with named routes

### Theming
- **FlexColorScheme** for beautiful, consistent Material 3 themes
- Dynamic theme switching (light/dark/system)
- Persistent theme preferences

### Internationalization
- **flutter_localizations** with ARB files
- Support for English and Chinese (easily extensible)
- Automatic locale detection with manual override

### Networking
- **Dio** HTTP client with interceptors and timeout configuration
- Centralized API client with common HTTP methods
- Request/response logging for debugging

### UI Components
- **OKToast** for elegant toast notifications with helper methods
- **Skeletonizer** for loading states and skeleton screens
- Reusable widget components in `core/widgets/`

### Key Files
- `lib/main.dart` - App setup with ProviderScope, OKToast, and MaterialApp.router
- `lib/core/router/app_router.dart` - GoRouter configuration with Riverpod
- `lib/core/providers/theme_provider.dart` - Theme state management
- `lib/core/providers/locale_provider.dart` - Locale state management
- `lib/core/services/dio_client.dart` - HTTP client configuration
- `lib/core/theme/app_theme.dart` - FlexColorScheme theme definitions

## Dependencies

### Core Dependencies
- **flutter_riverpod** - State management
- **go_router** - Navigation
- **flex_color_scheme** - Advanced theming
- **dio** - HTTP client
- **shared_preferences** - Local storage
- **oktoast** - Toast notifications
- **skeletonizer** - Loading skeletons

### Development Dependencies
- **build_runner** - Code generation
- **riverpod_generator** - Riverpod code generation
- **flutter_lints** - Code quality

## Code Generation

This project uses code generation for Riverpod providers. When creating new providers with `@riverpod` annotation:

1. Add the provider to a file with `part 'filename.g.dart';`
2. Run `dart run build_runner build` to generate the code
3. The generated `.g.dart` files are git-ignored and created automatically

## Usage Patterns

### Adding New Features
1. Create feature directory under `lib/features/`
2. Add pages, widgets, and providers for the feature
3. Register routes in `app_router.dart`
4. Add translations to ARB files

### State Management
- Use `@riverpod` annotation for new providers
- Consumer widgets with `ref.watch()` for reactive UI
- `ref.read()` for one-time actions

### Navigation
- Use `context.go('/path')` for navigation
- Named routes defined in `app_router.dart`

### Theming
- Extend `AppTheme` class for custom themes
- Use `ref.read(themeNotifierProvider.notifier).setTheme()` to change themes

### Internationalization
- Add new keys to ARB files
- Use `AppLocalizations.of(context)!.keyName` in widgets