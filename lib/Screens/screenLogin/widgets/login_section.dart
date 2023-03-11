import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/heleper/heleper.dart';
import '../../../utils/widget/text_widget.dart';
import '../../../utils/widget/textfiled_widget.dart';
import '../screen_login.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({
    super.key,
    required this.isDark,
    required this.loginController,
  });

  final bool isDark;
  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
            txt: 'Login'.tr,
            color: isDark ? Colors.white : Colors.black,
            txtSize: 30),
        addverticalSpacing(10),
        TextWidget(
            txt: 'Please login here'.tr,
            color: isDark ? Colors.white : Colors.black,
            txtSize: 18),
        addverticalSpacing(10),
        TextfiledWidget(
            vaildator: (value) {
              if (!GetUtils.isPhoneNumber(value.toString())) {
                return 'Enter correct mobile number';
              } else {
                return null;
              }
            },
            txt: 'Mobile'.tr,
            controller: loginController.mobController,
            icon: const Icon(Icons.phone_rounded)),
        addverticalSpacing(10),
        TextfiledWidget(
            vaildator: (value) {
              if (!GetUtils.isLengthGreaterOrEqual(value, 6)) {
                return 'Enter correct  passwrod';
              } else {
                return null;
              }
            },
            txt: 'Passwrod'.tr,
            icon: const Icon(Icons.security),
            controller: loginController.passController),
        addverticalSpacing(18),
        SizedBox(
          width: 200,
          child: Obx(
            () => ElevatedButton(
                onPressed: () {
                  loginController.login(loginController.mobController.text,
                      loginController.passController.text);
                },
                child: loginController.isloading.value
                    ? const CircularProgressIndicator()
                    : TextWidget(
                        txt: 'Login'.tr,
                        color: isDark ? Colors.white : Colors.black,
                        txtSize: 18)),
          ),
        ),
      ],
    );
  }
}
