import 'package:master_helper/core/models/language.dart';
import 'package:master_helper/core/repositories/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository implements SettingsRepositoryInterface {
  SettingsRepository({required this.prefs});

  final SharedPreferences prefs;

  static const _darkThemeSelectedKey = 'dark_theme_selected';
  static const _languageCodeKey = 'language_code';

  @override
  bool isDarkThemeSelected() {
    final isEnabled = prefs.getBool(_darkThemeSelectedKey);
    return isEnabled ?? false;
  }

  @override
  Future<void> setDarkThemeSelected(bool isDarkThemeEnabled) async {
    await prefs.setBool(_darkThemeSelectedKey, isDarkThemeEnabled);
  }

  @override
  String getLanguageCode() {
    final languageCode = prefs.getString(_languageCodeKey);
    return languageCode ?? Language.ru.code;
  }

  @override
  Future<void> setLanguageCode(String languageCode) async {
    await prefs.setString(_languageCodeKey, languageCode);
  }
}
