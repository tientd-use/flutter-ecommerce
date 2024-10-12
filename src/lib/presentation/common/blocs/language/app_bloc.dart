import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../constants/enum/language_code.dart';
import '../../../../constants/locale_constants.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(LanguageInitial()) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
