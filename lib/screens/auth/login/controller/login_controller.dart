import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class LoginController extends GetxController{

  RxInt passwordTextLength = RxInt(0);
  RxBool isPasswordVisible = RxBool(false);
  /// Controllers
  TextEditingController passwordController = TextEditingController();

  /// On init
  @override
  void onInit() {
    super.onInit();
    passwordController.addListener(() {
      passwordTextLength.value = passwordController.text.length;
    });
  }

}