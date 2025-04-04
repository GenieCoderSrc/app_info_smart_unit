import 'package:app_info_smar_unit/constants/app_info_img_path_const.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.logoPath, this.width, this.height, this.fit});

  final String? logoPath;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoPath ?? AppInfoImgPathConst.logoPath,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
