import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/controller/theme_controller.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.themController,
    required this.isDark,
  });

  final GetThemeController themController;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 300),
      child: Switch(
        value: themController.isSwitched.value,
        onChanged: (value) {
          Get.changeThemeMode(
              isDark ? ThemeMode.light : ThemeMode.dark);

          themController.changeThemeState(value);
        },
      ),
    );
  }
}