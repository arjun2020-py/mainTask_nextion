import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nextion_project/Screens/screenLogin/constants/login_const.dart';

class LottieSection extends StatelessWidget {
  const LottieSection({super.key, required this.hieght});
  final double hieght;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      loginImg,
      width: double.infinity,
      height: hieght,
      alignment: Alignment.center,
    );
  }
}
