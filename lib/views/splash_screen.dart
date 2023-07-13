import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:summer_project/views/on_boarding_screen.dart';

import '../themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColor,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: defaultColor,
            statusBarIconBrightness: Brightness.light
        ),
        elevation: 0,
      ),
      body: Center(
        child: AnimatedSplashScreen(
            backgroundColor: defaultColor,
            //curve: Curves.fastOutSlowIn,
            splash: Center(
              child: Text(
                  'Events',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 55,
                ),
              ),
            ),
            nextScreen: OnBoardingScreen(),
            animationDuration: Duration(seconds: 0),
            duration: 350,
            //splashTransition: SplashTransition.scaleTransition,
        ),
      ),
    );
  }
}
