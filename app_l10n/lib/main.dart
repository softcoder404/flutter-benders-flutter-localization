import 'package:app_l10n/bloc/local/locale_cubit.dart';
import 'package:app_l10n/bloc/local/supported_locale.dart';
import 'package:app_l10n/l10n/app_l10n_localizations.dart';
import 'package:app_l10n/login/login_screen.dart';
import 'package:app_l10n/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'App l10n Demo',
            theme: AppThemes.lightTheme,
            home: const LoginScreen(),
            locale: state.appLocale.locale,
            supportedLocales: supportedLocale.map((e) => e.locale),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              Appl10nLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
