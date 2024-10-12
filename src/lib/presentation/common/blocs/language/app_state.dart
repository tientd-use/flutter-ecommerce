part of 'app_bloc.dart';

@immutable
sealed class AppState {
  const AppState({this.languageCode = LanguageCode.ja});

  final LanguageCode languageCode;
}

final class LanguageInitial extends AppState {}
