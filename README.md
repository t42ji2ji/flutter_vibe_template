# flutter_vibe_template

A Flutter Template For All Vibe Coders

## Getting Started

Run this command to change the package name for both platforms.

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
`dart run flutter_launcher_icons`# flutter_vibe_template
