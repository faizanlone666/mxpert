import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/features/homepage_screen/homepage_screen.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/bottom_navigation_bar.dart';
import 'package:mxpert/src/features/splash_screen/splash_screen.dart';
import 'package:mxpert/src/features/statistics_screen/statistics_screen.dart';
import 'package:mxpert/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const BottomNavigationBarWidget(),
    );
  }
}

