import 'package:app_style/app_style.dart';
import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView(
      {super.key, required this.desc, this.textAlign = TextAlign.center});

  final String desc;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuerySize.getHeight(context);
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.02),
      child: Text(desc,
          // style: GoogleUbuntuFontsTextStyles.fontsGrey16,
          style: AppTxtStyles.fontsGrey16,
          textAlign: textAlign),
    );
  }
}
