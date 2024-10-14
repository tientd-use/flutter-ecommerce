part of 'splash_bloc.dart';

@immutable
sealed class SplashState {}

final class SplashInitialState extends SplashState {}

final class SplashLoadingState extends SplashState {}

final class SplashLoadedState extends SplashState {}
