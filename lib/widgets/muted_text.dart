import 'package:app_style/media_query_size.dart';
import 'package:flutter/material.dart';
import 'package:app_style/app_style.dart';

class MutedText extends StatelessWidget {
  const MutedText({super.key, required this.title, this.fontSize});

  final String title;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuerySize.getHeight(context);
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: height * 0.04),
      child: Text(title,
          textAlign: TextAlign.center,
          // style: GoogleUbuntuFontsTextStyles.fontsBoldGrey
          style: AppTxtStyles.kTitle24.copyWith(fontSize: fontSize)),
    );
  }
}
