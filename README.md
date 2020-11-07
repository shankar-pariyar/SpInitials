# [sp_initials](https://pub.dev/packages/sp_initials)

A flutter plugin to get the initial letters of full name.

## Usage

This plugin returns initial letters of the full name with customizable background, so it can be useful while creating contacts or chat application.

## How to use

To use this plugin, add `sp_initials` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

``` yaml
# add this line in your dependencies
sp_initials: ^0.0.1
```

``` dart
// import this package in your dart file
import 'package:sp_initials/sp_initials.dart';
```

### Example

``` dart
Text(SpInitials.getInitials('Shankar Pariyar')),
child: SpInitials.getInitialsWithShape(context: context, fullName: 'Shankar Pariyar'),
```

| property        | description                                                        | default    |
| --------------- | ------------------------------------------------------------------ |------------|
| context         | Pass context of ancestor widget (required)                         |required    |
| fullName        | String full name to get initial letters(required)                  |required    |
| radius          | radius of bakground shape (when font size is changed, radius of background shape is changed accordingly)                                                                           |30.0        |
| isCircle        | if `true`, circle shape                                            |false       |
| borderRadius    | for rectangle with rounded border (isCircle must be `false`)       |null        |
| borderWidth     | shape outline/border (when borderColor is set, default borderWidth = 1.0) |null        |
| borderColor     | shape outline/border color (when borderWidth is set, default borderColor = primaryColor)                                                                          |null        |
| backgroundColor | shape background color                                             |primaryColor|
| fontSize        | initial letters' font size (when font size is changed, radius of background shape is changed accordingly)                                                                           |14.0        |
| fontWeight      | to change the font weight                                          |normal      |
| fontColor       | to change the font color                                           |black       |
| fontFamily      | to change the font family                                          |android: Roboto, iOS: San Francisco|
| letterSpacing   | to provide space between initial letters (+ve value to increase space, -ve value to decrease space)                                                                                 |0.0         |

## Preview Images

<img src="https://github.com/shankar-pariyar/SpInitials/blob/master/screenshots/sp_01.jpg" width="320px" />