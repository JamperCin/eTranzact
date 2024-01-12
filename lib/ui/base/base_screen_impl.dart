import 'package:flutter/material.dart';

import 'base_screen.dart';

abstract class BaseScreenImpl extends BaseScreen {
  BuildContext? mContext;

  @override
  void setContext(BuildContext context) {
    mContext = context;
  }

  @override
  Widget? appBarLeadingIcon() {
    return null;
  }

  @override
  double appBarHeight() {
    return 50;
  }

  @override
  Widget bottomSheet(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  Widget floatingActionButton(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  FloatingActionButtonLocation actionButtonLocation() {
    return FloatingActionButtonLocation.endFloat;
  }

  @override
  Color appBarBackgroundColor() {
    return Colors.white;
  }

  @override
  Color appBarTitleColor() {
    return Colors.black;
  }

  @override
  Widget? appBarTitleWidget() {
    return null;
  }

  @override
  bool shouldDismissKeyboard() {
    return true;
  }

  @override
  Widget body(BuildContext context) {
    return Container();
  }

  @override
  bool showAppBar() {
    return false;
  }

  @override
  List<Widget> actions() {
    return [];
  }

  @override
  double appBarElevation() {
    return 0;
  }

  @override
  String appBarTitle() {
    return "";
  }

  @override
  IconThemeData iconThemeData() {
    return IconThemeData();
  }

  @override
  IconData icon() {
    return Icons.notification_important_sharp;
  }

  @override
  void dismissKeyBoard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Color backgroundColor() {
    return Colors.white;
  }

  @override
  Widget bottomNavigationBar({BuildContext? context}) {
    return const SizedBox.shrink();
  }

  @override
  PreferredSizeWidget appBar() {
    return AppBar(
      elevation: appBarElevation(),
      backgroundColor: appBarBackgroundColor(),
      iconTheme: iconThemeData(),
      leading: appBarLeadingIcon(),
      surfaceTintColor: backgroundColor(),
      toolbarHeight: appBarHeight(),
      title: appBarTitleWidget(),
      actions: actions(),
    );
  }
}
