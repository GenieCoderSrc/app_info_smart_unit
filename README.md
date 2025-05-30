# app_info_smart_unit

`app_info_smart_unit` is a Flutter package that provides a structured way to display application information such as version, developer details, app logo, and more in a standardized screen.

## Features
- Displays app logo, version, and developer details.
- Supports customizable descriptions.
- Includes an email view for contact information.
- Well-structured widgets for easy integration.

## Installation
Add the following dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  app_info_smart_unit: latest_version
```

Run:
```sh
flutter pub get
```

## Usage

### Import the Package
```dart
import 'package:app_info_smart_unit/app_info_smart_unit.dart';
```

### Display App Information Screen
```dart
import 'package:flutter/material.dart';
import 'package:app_info_smart_unit/app_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppInfoScreen(
        screenTitle: 'About App',
        logoPath: 'assets/images/app_logo.png',
        email: 'genie.coder@gmail.com',
        descriptionList: ['This is an amazing app.', 'Developed by GenieCoder'],
      ),
    );
  }
}
```

### Widgets Included
- **AppLogo**: Displays the app logo.
- **AppVersion**: Fetches and displays the app version.
- **DescriptionView**: Displays app description text.
- **EmailView**: Shows developer contact email.
- **MutedText**: Displays copyright information.

## License
MIT License. See `LICENSE` file for details.

## Author
Developed by **GenieCoder**
- Email: genie.coder@gmail.com

#   a p p _ i n f o _ s m a r t _ u n i t  
 