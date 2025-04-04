import 'package:app_info_smart_unit/constants/app_info_txt_const.dart';
import 'package:flutter/material.dart';
import 'package:app_style/app_style.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        email ?? AppInfoTxtConst.developerEmail ,
        textAlign: TextAlign.center,
        style: AppTxtStyles.kTitleTextStyle20
            .copyWith(decoration: TextDecoration.underline),
        // style: GoogleUbuntuFontsTextStyles.fontsBold20
      ),
    );
  }
}
