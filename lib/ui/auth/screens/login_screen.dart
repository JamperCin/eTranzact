import 'package:e_tranzact/services/config/asset_config.dart';
import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:e_tranzact/ui/auth/controllers/login_controller.dart';
import 'package:e_tranzact/ui/base/base_screen_standard.dart';
import 'package:e_tranzact/ui/shared/button_widget.dart';
import 'package:e_tranzact/ui/shared/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends BaseScreenStandard {
  final controller = Get.put(LoginController());

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFieldWidget(
            title: 'Email Address',
            hint: 'Eg: jamper@gmail.com',
            textEditingController: controller.emailTxt,
            onChanged: controller.onValidate,
          ),
          const SizedBox(height: 20),
          TextFieldWidget(
            title: 'Password',
            hint: '**** **** ****',
            isPasswordField: true,
            textEditingController: controller.passwordTxt,
            keyboardType: TextInputType.visiblePassword,
            onChanged: controller.onValidate,
          ),
          const SizedBox(height: 20),
          Obx(
            () => ButtonWidget(
              title: 'LogIn',
              onTap: controller.onLoginOnClick,
              color: controller.isFormValid.value
                  ? Colors.tealAccent
                  : Colors.black12,
              textStyle: AppTextStyles.description.copyWith(
                color:
                    controller.isFormValid.value ? Colors.white : Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ButtonWidget(
            title: 'LogIn With Google',
            color: Colors.black12,
            onTap: controller.onLoginWithGoogle,
            assetPath: AssetConfig.googleIcon,
            textStyle: AppTextStyles.description.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
