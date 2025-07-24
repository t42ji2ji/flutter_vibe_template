# flutter_vibe_template

A Flutter Template For All Vibe Coders

## Getting Started

Run this command to change the package name for both platforms.

# i18n
update `.arb` file in `./lib/l10n` and run：
`flutter gen-l10n`

### Change Bundle Name

`dart run change_app_package_name:main com.new.package.name`
To rename only Android:
`dart run change_app_package_name:main com.new.package.name --android`
To rename only IOS:
`dart run change_app_package_name:main com.new.package.name --ios`


### Change App Name

Same name for all apps
```
dart run rename_app:main all="My App Name"
```

Seperate name for each platform
``` dart
dart run rename_app:main android="Android Name" \
ios="IOS Name" web="Web Name" mac="Mac Name" \
windows="Windows Name" linux="Linux Name"
```


### change app icon

Generate config file
`dart run flutter_launcher_icons:generate`
`dart run flutter_launcher_icons`


### Native Splash
[package](https://pub.dev/packages/flutter_native_splash)

When your app is opened, there is a brief time while the native app loads Flutter. By default, during this time, the native app displays a white splash screen. This package automatically generates iOS, Android, and Web-native code for customizing this native splash screen background color and splash image. Supports dark mode, full screen, and platform-specific options.
 
<p align='center'>
    <img src="https://raw.githubusercontent.com/jonbhanson/flutter_native_splash/master/splash_demo.gif" />
    <img src="https://raw.githubusercontent.com/jonbhanson/flutter_native_splash/master/splash_demo_dark.gif" />
</p>

Go to `./flutter_native_splash` adjust color and image you want and then run

```dart run flutter_native_splash:create```




