import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextion_project/Screens/screenLogin/widgets/dropdown_widget.dart';
import 'package:nextion_project/Screens/screenLogin/widgets/switch_widget.dart';

import '../../../utils/heleper/heleper.dart';
import '../../themes/controller/theme_controller.dart';
import '../controller/dropdwon_controller.dart';
import '../controller/login_controller.dart';
import '../widgets/login_section.dart';
import '../widgets/lottie_section.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({super.key});
  final loginController = Get.put(LoginController());
  final dropdownController = Get.put(DropdwonController());
  final themController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SwitchWidget(themController: themController, isDark: isDark),
                  DropdwonWidget(dropdownController: dropdownController)
                ],
              ),
          
              addverticalSpacing(12),
              LottieSection(
                hieght: 300,
              ),
              //column
              LoginSection(isDark: isDark, loginController: loginController),
            ],
          ),
        ),
      ),
    );
  }
}
