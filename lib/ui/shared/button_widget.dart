import 'package:e_tranzact/services/config/asset_config.dart';
import 'package:e_tranzact/services/styles/app_text_styles.dart';
import 'package:e_tranzact/ui/shared/asset_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onTap;
  final Color? color;
  final TextStyle? textStyle;
  final double? width;
  final String? assetPath;

  const ButtonWidget({
    Key? key,
    this.onTap,
    this.title,
    this.color,
    this.width,
    this.assetPath,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.greenAccent,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          child: assetPath == null
              ? Text(
                  title ?? '',
                  style: textStyle ??
                      AppTextStyles.description.copyWith(color: Colors.white),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AssetWidget(
                      assetPath: assetPath ?? AssetConfig.googleIcon,
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      title ?? '',
                      style: textStyle ??
                          AppTextStyles.description
                              .copyWith(color: Colors.white),
                    ),
                    SizedBox(),
                  ],
                )),
    );
  }
}
