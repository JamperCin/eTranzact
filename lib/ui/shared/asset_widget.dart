import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AssetWidget extends StatelessWidget {
  final String assetPath;
  final double? height;
  final double? width;
  final Color? assetColor;
  final BoxFit? fit;

  const AssetWidget({
    Key? key,
    required this.assetPath,
    this.height,
    this.width,
    this.assetColor,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetUtils.isImage(assetPath)
        ? Image.asset(
            assetPath,
            height: height ?? 80,
            width: width ?? 80,
            color: assetColor,
            fit: fit ?? BoxFit.contain,
          )
        : SvgPicture.asset(
            assetPath,
            height: height ?? 80,
            width: width ?? 80,
            color: assetColor,
            fit: fit ?? BoxFit.contain,
          );
  }
}
