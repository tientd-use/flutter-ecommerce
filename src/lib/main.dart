import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_2/presentation/common/blocs/common_bloc.dart';
import 'package:flutter_ecommerce_2/presentation/common/blocs/simple_bloc_observer.dart';

import 'app_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: CommonBloc.appBlocProviders,
      child: AppView(),
    );
  }
}
