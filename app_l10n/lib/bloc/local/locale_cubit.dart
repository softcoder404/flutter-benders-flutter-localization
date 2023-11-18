import 'package:app_l10n/bloc/local/supported_locale.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleState(appLocale: supportedLocale.first));

  void changeAppLocale(AppLocale locale) {
    emit(state.copyWith(appLocale: locale));
  }
}
