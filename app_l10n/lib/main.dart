import 'package:app_l10n/login/login_screen.dart';
import 'package:app_l10n/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App l10n Demo',
      theme: AppThemes.lightTheme,
      home: const LoginScreen(),
    );
  }
}
