import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController passwordTxt = TextEditingController();
  RxBool isFormValid = false.obs;

  void onLoginWithGoogle() {}

  void onLoginOnClick() {
    if (isFormValid.value) {}
  }

  //Find proper validation for both password and email using Regex
  void onValidate(String data) {
    isFormValid.value = emailTxt.text.isNotEmpty && passwordTxt.text.isNotEmpty;

    debugPrint("data");
  }
}
