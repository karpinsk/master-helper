abstract interface class SettingsRepositoryInterface {
  bool isDarkThemeSelected();
  String getLanguageCode();

  Future<void> setDarkThemeSelected(bool isDarkThemeEnabled);
  Future<void> setLanguageCode(String languageCode);
}
