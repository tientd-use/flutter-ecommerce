import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2/app_bottom_navigation.dart';

import '../presentation/screens/splash/splash_screen.dart';

class AppRouter {
  static const String home = '/home';
  static const String splash = '/splash';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => AppNavigationTab());
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
