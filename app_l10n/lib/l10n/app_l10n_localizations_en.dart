import 'app_l10n_localizations.dart';

/// The translations for English (`en`).
class Appl10nLocalizationsEn extends Appl10nLocalizations {
  Appl10nLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginWelcomeTitle => 'Welcome to l10n App';

  @override
  String get loginWelcomeSubTitle => 'Please provide a valid auth credential to login.';

  @override
  String get loginEmailTitle => 'Email Address';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get loginPasswordTitle => 'Password Address';

  @override
  String get loginPasswordHint => 'Enter your password';

  @override
  String get loginForgotPasswordTitle => 'Forgot Password?';

  @override
  String get loginChangeLangTitle => 'Change Language';

  @override
  String get loginButtonTitle => 'Login';
}
