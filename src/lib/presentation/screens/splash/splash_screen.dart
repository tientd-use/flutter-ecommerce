import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/app_router.dart';
import '../../../gen/assets.gen.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  BlocProvider.of<SplashBloc>(context).add(SplashSetEvent());
    return BlocConsumer<SplashBloc, SplashState>(listener: (context, state) {
      if (state is SplashLoadedState) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(AppRouter.home, (route) => false);
      }
    }, builder: (context, state) {
      return _buildCenter();
    });
  }

  Scaffold _buildCenter() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.images.splash.image(width: 100, height: 100),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
