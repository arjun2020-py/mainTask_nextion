import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nextion_project/Screens/screenLogin/model/login_auth_model.dart';
import 'package:nextion_project/Screens/screenLogin/model/login_reponse_model.dart';
import 'package:nextion_project/Screens/screenLogin/reposirtey/login_reposirty.dart';

import '../../screenHome/view/screen_home.dart';

class LoginController extends GetxController {
  TextEditingController mobController = TextEditingController(),
      passController = TextEditingController();

  RxBool isloading = false.obs;

  LoginResponseModel? loginResponseModel;

  void login(String mob, String pass) async {
    isloading.value = true;
    
    Either<String, LoginResponseModel> result = await LoginRepositry()
        .login(LoginAuthModel(mobile: mob, password: pass));
    isloading.value = false;

    result.fold(
        (left) => Get.showSnackbar(GetSnackBar(
              duration: const Duration(seconds: 3),
              message: left,
              isDismissible: true,
              backgroundColor: Colors.red,
              icon: Icon(Icons.cancel_outlined),
            )), (right) {
      Get.showSnackbar(const GetSnackBar(
        duration: Duration(seconds: 3),
        message: 'Succssfully login',
        backgroundColor: Colors.green,
        icon: Icon(Icons.check_circle),
      ));
      Get.to(const ScreenHome());
    });
  }
}
