import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/create_account_screen.dart';
import '../screens/login_screen.dart';

class AuthController extends GetxController {
  TabController? tabController;
  RxList<Widget> screenView = RxList<Widget>();

  Future<void> onInitScreen({int screenIndex = 0}) async {
    await Future.delayed(const Duration(milliseconds: 180));
    setScreen(index: screenIndex);
  }

  Future<void> setScreen({int index = 0}) async {
    Widget widget = const SizedBox.shrink();
    switch (index) {
      case 0:
        widget = CreateAccountScreen();
        break;
      case 1:
        widget = LoginScreen();
        break;
    }

    debugPrint("INDEX $index");
    tabController?.animateTo(index);
    screenView.clear();
    screenView.add(widget);
  }

  void onTabOnClick(int index) {
    setScreen(index: index);
  }
}
