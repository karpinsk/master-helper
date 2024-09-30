abstract interface class SettingsRepositoryInterface {
  bool isDarkThemeEnabled();
  Future<void> toggleTheme(bool isDarkThemeEnabled);
}
