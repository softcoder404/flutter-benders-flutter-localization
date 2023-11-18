import 'app_l10n_localizations.dart';

/// The translations for Portuguese (`pt`).
class Appl10nLocalizationsPt extends Appl10nLocalizations {
  Appl10nLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get loginWelcomeTitle => 'Bem-vindo ao aplicativo l10n';

  @override
  String get loginWelcomeSubTitle => 'Forneça uma credencial de autenticação válida para fazer login.';

  @override
  String get loginEmailTitle => 'Endereço de email';

  @override
  String get loginEmailHint => 'Insira o seu endereço de email';

  @override
  String get loginPasswordTitle => 'Endereço de senha';

  @override
  String get loginPasswordHint => 'Coloque sua senha';

  @override
  String get loginForgotPasswordTitle => 'Esqueceu sua senha?';

  @override
  String get loginChangeLangTitle => 'Mudar idioma';

  @override
  String get loginButtonTitle => 'Conecte-se';
}
