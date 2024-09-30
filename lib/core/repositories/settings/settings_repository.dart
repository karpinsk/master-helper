import 'package:master_helper/core/repositories/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository implements SettingsRepositoryInterface {
  SettingsRepository({
    required this.preferences,
  });

  final SharedPreferences preferences;

  static const _darkThemeKey = 'dark_theme';

  @override
  bool isDarkThemeEnabled() {
    final isEnabled = preferences.getBool(_darkThemeKey);
    return isEnabled ?? false;
  }

  @override
  Future<void> toggleTheme(bool isDarkThemeEnabled) async {
    await preferences.setBool(_darkThemeKey, isDarkThemeEnabled);
  }
}
