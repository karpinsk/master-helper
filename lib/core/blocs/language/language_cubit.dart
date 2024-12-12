import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/models/language.dart';
import 'package:master_helper/core/repositories/settings/settings.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit({required SettingsRepositoryInterface settingsRepository})
      : _settingsRepository = settingsRepository,
        super(LanguageState(Language.ru.code)) {
    _init();
  }

  final SettingsRepositoryInterface _settingsRepository;

  Future<void> setLanguage(String languageCode) async {
    try {
      emit(LanguageState(languageCode));
      await _settingsRepository.setLanguageCode(languageCode);
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  void _init() {
    try {
      final languageCode = _settingsRepository.getLanguageCode();
      emit(LanguageState(languageCode));
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}
