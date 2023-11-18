import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_l10n_localizations_en.dart';
import 'app_l10n_localizations_pt.dart';

/// Callers can lookup localized strings with an instance of Appl10nLocalizations
/// returned by `Appl10nLocalizations.of(context)`.
///
/// Applications need to include `Appl10nLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_l10n_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Appl10nLocalizations.localizationsDelegates,
///   supportedLocales: Appl10nLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Appl10nLocalizations.supportedLocales
/// property.
abstract class Appl10nLocalizations {
  Appl10nLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Appl10nLocalizations of(BuildContext context) {
    return Localizations.of<Appl10nLocalizations>(context, Appl10nLocalizations)!;
  }

  static const LocalizationsDelegate<Appl10nLocalizations> delegate = _Appl10nLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @loginWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to l10n App'**
  String get loginWelcomeTitle;

  /// No description provided for @loginWelcomeSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Please provide a valid auth credential to login.'**
  String get loginWelcomeSubTitle;

  /// No description provided for @loginEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get loginEmailTitle;

  /// No description provided for @loginEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get loginEmailHint;

  /// No description provided for @loginPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Password Address'**
  String get loginPasswordTitle;

  /// No description provided for @loginPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get loginPasswordHint;

  /// No description provided for @loginForgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get loginForgotPasswordTitle;

  /// No description provided for @loginChangeLangTitle.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get loginChangeLangTitle;

  /// No description provided for @loginButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButtonTitle;
}

class _Appl10nLocalizationsDelegate extends LocalizationsDelegate<Appl10nLocalizations> {
  const _Appl10nLocalizationsDelegate();

  @override
  Future<Appl10nLocalizations> load(Locale locale) {
    return SynchronousFuture<Appl10nLocalizations>(lookupAppl10nLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_Appl10nLocalizationsDelegate old) => false;
}

Appl10nLocalizations lookupAppl10nLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return Appl10nLocalizationsEn();
    case 'pt': return Appl10nLocalizationsPt();
  }

  throw FlutterError(
    'Appl10nLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
