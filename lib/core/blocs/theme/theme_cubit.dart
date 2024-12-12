import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_helper/core/repositories/settings/settings.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required SettingsRepositoryInterface settingsRepository})
      : _settingsRepository = settingsRepository,
        super(const ThemeState(isDarkTheme: false)) {
    _init();
  }

  final SettingsRepositoryInterface _settingsRepository;

  Future<void> setThemeBrightness(bool isDarkTheme) async {
    try {
      emit(ThemeState(isDarkTheme: isDarkTheme));
      await _settingsRepository.setDarkThemeSelected(isDarkTheme);
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  void _init() {
    try {
      final isDarkTheme = _settingsRepository.isDarkThemeSelected();
      emit(ThemeState(isDarkTheme: isDarkTheme));
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}
