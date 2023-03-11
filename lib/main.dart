import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextion_project/Screens/reponsive_widget/responsive_desgin.dart';
import 'package:nextion_project/Screens/screenLogin/compents/desktop_screen.dart';
import 'package:nextion_project/Screens/screenLogin/compents/mobile_screen.dart';
import 'package:nextion_project/Screens/themes/constiners/theme_constiners.dart';

import 'Screens/interlization/interlization.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US '),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: ResponsiveLayout(mobile: MobileScreen(), desktop: DesktopScreen()),
    );
  }
}
