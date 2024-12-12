import 'package:master_helper/generated/l10n.dart';

enum Language {
  en,
  ru,
  pl,
  kz;

  static Language fromCode(String code) {
    return Language.values.firstWhere(
      (language) => language.code == code,
      orElse: () => Language.ru,
    );
  }
}

extension LanguageExtension on Language {
  String get name => _languageNames[this]!;
  String get code => _languageCodes[this]!;

  static final Map<Language, String> _languageNames = {
    Language.en: S.current.languageEN,
    Language.ru: S.current.languageRU,
    Language.pl: S.current.languagePL,
    Language.kz: S.current.languageKZ,
  };

  static final Map<Language, String> _languageCodes = {
    Language.en: 'en',
    Language.ru: 'ru',
    Language.pl: 'pl',
    Language.kz: 'kk',
  };
}
