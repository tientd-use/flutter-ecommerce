import '../locale_constants.dart';

enum LanguageCode {
  en(
    localeCode: LocaleConstants.en,
  ),
  ja(
    localeCode: LocaleConstants.ja,
  );

  const LanguageCode({
    required this.localeCode,
  });

  final String localeCode;

  static const defaultValue = ja;
}