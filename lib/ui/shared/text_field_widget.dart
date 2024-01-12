import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  final String? title;
  final String? hint;
  final bool isPasswordField;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const TextFieldWidget({
    Key? key,
    this.title,
    this.hint,
    this.onChanged,
    this.keyboardType,
    this.isPasswordField = false,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool obscureText = isPasswordField.obs;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: AppTextStyles.subDescription,
        ),
        const SizedBox(height: 10),
        Obx(
          () => TextFormField(
            controller: textEditingController,
            style: AppTextStyles.subDescription,
            obscureText: obscureText.value,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.3),
                  width: 1,
                ),
              ),
              hintText: hint,
              suffixIcon: isPasswordField
                  ? GestureDetector(
                      onTap: () {
                        obscureText.value = !obscureText.value;
                      },
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(obscureText.value
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                      ),
                    )
                  : SizedBox(),
            ),
          ),
        ),
      ],
    );
  }
}
