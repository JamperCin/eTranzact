import 'package:e_tranzact/services/config/asset_config.dart';
import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:e_tranzact/ui/shared/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_screen_standard.dart';
import '../../shared/asset_widget.dart';
import '../controllers/welcome_controller.dart';

class WelcomeScreen extends BaseScreenStandard {
  final controller = Get.put(WelcomeController());

  WelcomeScreen() {
    controller.onInitData();
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AssetWidget(
          assetPath: AssetConfig.welcomeIcon,
          height: 250,
          width: 250,
        ),
        SizedBox(height: 40),
        Text(
          "Welcome",
          style: AppTextStyles.display1,
        ),
        SizedBox(height: 20),
        Text(
          "Before enjoying Foodmedia Services \nPlease Register First",
          style: AppTextStyles.subDescription,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80),
        ButtonWidget(
          title: 'Create Account',
          color: Colors.teal,
          onTap: controller.onCreateAccountOnClick,
        ),
        SizedBox(height: 20),
        ButtonWidget(
          title: 'Login',
          color: Colors.tealAccent,
          onTap: controller.onLoginOnClick,
        ),
        SizedBox(height: 20),
        RichText(
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(children: [
            TextSpan(
              text: 'By Logging In Or Registering, You have agreed To ',
              style: AppTextStyles.subDescription,
            ),
            TextSpan(
              text: 'The Terms And Conditions ',
              style: AppTextStyles.subDescription
                  .copyWith(color: Colors.tealAccent),
            ),
            TextSpan(
              text: 'And',
              style: AppTextStyles.subDescription,
            ),
            TextSpan(
              text: ' Privacy Policy',
              style: AppTextStyles.subDescription
                  .copyWith(color: Colors.tealAccent),
            )
          ]),
        )
      ],
    );
  }
}
