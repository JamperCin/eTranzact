import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/constants.dart';
import '../screens/authentication_screen.dart';

class WelcomeController extends GetxController {
  ///Initialise this to set data
  Future<void> onInitData() async {
    var pref = await SharedPreferences.getInstance();
    bool? isWelcomeScreenShown = pref.getBool(welcomeShown);
    if (isWelcomeScreenShown == null) {
      pref.setBool(welcomeShown, true);
    } else if (isWelcomeScreenShown) {
      await Future.delayed(const Duration(milliseconds: 180));
      popUpCreateAccountAndLLoginScreen(index: 1);
    }
  }

  //Create a new account on click listener
  void onCreateAccountOnClick() {
    popUpCreateAccountAndLLoginScreen(index: 0);
  }

  //Login Button Click Listener
  void onLoginOnClick() {
    popUpCreateAccountAndLLoginScreen(index: 1);
  }

  void popUpCreateAccountAndLLoginScreen({int index = 0}) {
    Get.bottomSheet(
      Container(
        height: MediaQuery.of(Get.context!).size.height * 0.7,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: AuthenticationScreen(screenIndex: index),
      ),
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
    );
  }
}
