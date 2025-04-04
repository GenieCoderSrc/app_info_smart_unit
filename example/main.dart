import 'package:app_info_smar_unit/screens/app_info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Info Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppInfoExample(),
    );
  }
}

class AppInfoExample extends StatelessWidget {
  const AppInfoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AppInfoScreen(
      screenTitle: 'About This App',
      logoPath: 'assets/images/app_logo.png',
      email: 'genie.coder@gmail.com',
      descriptionList: [
        'This is a sample app showcasing the app_info_smar_unit package.',
        'Easily display app details with predefined widgets.',
      ],
    );
  }
}
