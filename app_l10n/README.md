# app_l10n

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## What is Internationalization and Localization

- Internationalization refers to the process of designing and developing an application in a way that allows it to be translatable for users from different languages and regions without requiring engineering changes.

- Localization refers to the process of adapting an internationalized application for a specific target locale or market.

Internationalization and localization often go way beyond just text translation. Different regions write dates differently and can have different phone number formats, addresses, measurement units, currencies, etc.

## The goal of this repository

- Internationalize an existing app on the starter branch
- Organize internationalized messages.
- Localize your the app to support English and French

NB: Internationalization is also referred to as i18n and Localization is referred to as i10n because if you take the first and last letter from Internationalization - you have nternationalizatio which has 18 letters. Same things for localization.

## Step by Step Guide

- clone this repo, the main branch is the starter branch
- Add the requires package needed
  flutter pub add flutter_localizations --sdk=flutter
  flutter pub add intl:any
- create a folder l10n inside /lib forlder
- then create a new file called messages_en.arb inside the l10n folder
  This messages_en.arb file is what you will use to maintain the English version of all the translatable text you have in this package.

  NB: .arb are just JSONs with extra features

Internationalization in Flutter works heavily based on code generation. Later, you'll run a command that will cause a Flutter tool to parse this .arb file and generate a Dart class for you based on it. This generated class is then what you will use to access these values from your Flutter code e.g Text(l10n.loginWelcomeTitle)

- Create a new file named l10n.yaml under the app_l10n package's root folder

Add this content:
arb-dir: lib/l10n
template-arb-file: messages_en.arb output-localization-file: app_l10n_localizations.dart output-class: Appl10nLocalizations
nullable-getter: false
synthetic-package: false

- cd to your entrace folder and run: flutter gen-l10n

- now import the file and add this line of code inside your login_screen.dart
  final l10n = ProfileMenuLocalizations.of(context);

- Inside you main app add this delegate

Appl10nLocalizations.delegate,

## Adding One More Languages

- Inside your l10n folder, Create a new file in there named messages_pt.arb

Try and mirror what you have inside messages_en.arb

- Cd to the main entrance and run the command one more time: flutter gen-l10n

NB: Notice you didn't have to change l10n.yaml to specify your new arb file, it already knows which folder to scan

- Add these inside your main.dart file

supportedLocales: const [
Locale('en',''),
Locale('pt','')],

- Lastly add these

GlobalCupertinoLocalizations.delegate, GlobalMaterialLocalizations.delegate,
