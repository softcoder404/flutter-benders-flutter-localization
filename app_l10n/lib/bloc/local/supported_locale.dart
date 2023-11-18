import 'package:flutter/material.dart';

class AppLocale {
  final String name;
  final Locale locale;
  const AppLocale({required this.name, required this.locale});
}

const supportedLocale = [
  AppLocale(name: 'English (US)', locale: Locale('en', '')),
  AppLocale(name: 'Portuguese (PT)', locale: Locale('pt', '')),
];
