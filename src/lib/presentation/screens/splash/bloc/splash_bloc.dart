import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState()) {
    on<SplashSetEvent>(
      _onSetSplashHandler,
    );
    add(SplashSetEvent());
  }

  Future<void> _onSetSplashHandler(
      SplashSetEvent event, Emitter<SplashState> emit) async {
    emit(SplashLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(SplashLoadedState());
  }
}
