import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_2/presentation/common/blocs/language/app_bloc.dart';

import 'configs/app_router.dart';

class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) =>
          previous.languageCode != current.languageCode,
      builder: (context, appState) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Ecommerce',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: AppRouter.home,
          // locale: appState.languageCode.localeCode,
          //initialRoute: AppRouter.,
          // home: AppNavigationTab(),
        );
      },
    );
  }
}
