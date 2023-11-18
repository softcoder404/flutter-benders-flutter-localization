part of 'locale_cubit.dart';

class LocaleState extends Equatable {
  final AppLocale appLocale;
  const LocaleState({required this.appLocale});

  LocaleState copyWith({AppLocale? appLocale}) {
    return LocaleState(appLocale: appLocale ?? this.appLocale);
  }

  @override
  List<Object?> get props => [appLocale];
}
