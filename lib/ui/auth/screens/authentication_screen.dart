import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthenticationScreen extends StatefulWidget {
  final controller = Get.put(AuthController());
  final int screenIndex;

  AuthenticationScreen({
    Key? key,
    this.screenIndex = 0,
  }) : super(key: key) {
    controller.onInitScreen(screenIndex: screenIndex);
  }

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen>
    with SingleTickerProviderStateMixin {
  final int _tabsCount = 2;

  @override
  void initState() {
    super.initState();
    widget.controller.tabController =
        TabController(vsync: this, length: _tabsCount);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabsCount,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const SizedBox.shrink(),
          title: const SizedBox.shrink(),
          bottom: TabBar(
            physics: const NeverScrollableScrollPhysics(),
            controller: widget.controller.tabController,
            onTap: (index) {
              widget.controller.onTabOnClick(index);
            },
            tabs: [
              _tabItem("Create Account"),
              _tabItem("Login"),
            ],
          ),
        ),
        body: Obx(
          () => widget.controller.screenView.isNotEmpty
              ? widget.controller.screenView[0]
              : const SizedBox(),
        ),
      ),
    );
  }

  Widget _tabItem(String title) {
    return Text(
      title,
      style: AppTextStyles.description,
    );
  }
}
