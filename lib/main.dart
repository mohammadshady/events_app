import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:summer_project/themes.dart';
import 'package:summer_project/views/categories_screen.dart';
import 'package:summer_project/views/create_event.dart';
import 'package:summer_project/views/event_details.dart';
import 'package:summer_project/views/event_images.dart';
import 'package:summer_project/views/event_screen.dart';
import 'package:summer_project/views/login_screen.dart';
import 'package:summer_project/views/on_boarding_screen.dart';
import 'package:summer_project/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      getPages:
      [
        GetPage(name: "/", page: () => SplashScreen(),),
        GetPage(name: "/on_boarding", page: () => OnBoardingScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/categories", page: () => CategoriesScreen()),
        GetPage(name: "/create_event", page: () => CreateEvent()),
        GetPage(name: "/event_screen", page: () => EventScreen()),
        GetPage(name: "/event_details", page: () => EventDetails()),
        GetPage(name: "/event_images", page: () => EventImages()),


      ],
    );
  }
}

