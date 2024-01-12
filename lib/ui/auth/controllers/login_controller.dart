import 'package:e_tranzact/ui/dashboard/main_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController passwordTxt = TextEditingController();
  RxBool isFormValid = false.obs;
  RxBool isMakingNetworkRequest = false.obs;

  void onLoginWithGoogle() {}

  void onLoginOnClick() {
    if (isFormValid.value) {
      initLoginRequest();
    }
  }

  Future<void> initLoginRequest() async {
    isMakingNetworkRequest.value = true;
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(MainDashBoardScreen());
  }

  //Find proper validation for both password and email using Regex
  void onValidate(String data) {
    isFormValid.value = emailTxt.text.isNotEmpty && passwordTxt.text.isNotEmpty;
  }
}
