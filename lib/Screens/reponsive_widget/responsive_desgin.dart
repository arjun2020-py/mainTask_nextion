import 'package:flutter/material.dart';
import 'package:nextion_project/Screens/screenLogin/compents/desktop_screen.dart';
import 'package:nextion_project/Screens/screenLogin/compents/mobile_screen.dart';



class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.desktop});

  final Widget mobile;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 992;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 992) {
      return  DesktopScreen();
    }  else {
      return  MobileScreen();
    }
  }
}