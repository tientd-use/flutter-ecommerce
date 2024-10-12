import 'package:flutter_bloc/flutter_bloc.dart';

import 'language/app_bloc.dart';

class CommonBloc {
  static final languageBloc = AppBloc();
  static final List<BlocProvider> appBlocProviders = [
    BlocProvider<AppBloc>(
      create: (context) => languageBloc,
    ),
  ];

  static void dispose() {
    languageBloc.close();
  }

  static final CommonBloc _instance = CommonBloc._internal();

  factory CommonBloc() {
    return _instance;
  }

  CommonBloc._internal();
}
