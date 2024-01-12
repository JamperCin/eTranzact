import 'package:e_tranzact/services/config/asset_config.dart';
import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:e_tranzact/ui/base/base_screen_standard.dart';
import 'package:e_tranzact/ui/shared/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/text_field_widget.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountScreen extends BaseScreenStandard {
  final controller = Get.put(CreateAccountController());

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TextFieldWidget(
            title: 'Full Name',
            hint: 'Enter your full name',
          ),
          const SizedBox(height: 20),
          const TextFieldWidget(
            title: 'Email Address',
            hint: 'Eg: jamper@gmail.com',
          ),
          const SizedBox(height: 20),
          const TextFieldWidget(
            title: 'Password',
            hint: '**** **** ****',
            isPasswordField: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 20),
          ButtonWidget(
            title: 'Registration',
            color: Colors.black12,
            textStyle: AppTextStyles.description.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 20),
          ButtonWidget(
            title: 'Sign Up With Google',
            color: Colors.black12,
            assetPath: AssetConfig.googleIcon,
            textStyle: AppTextStyles.description.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
