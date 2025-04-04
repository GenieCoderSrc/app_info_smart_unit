import 'package:app_info_smar_unit/constants/app_info_txt_const.dart';
import 'package:app_style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:app_style/app_style.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key, this.textStyle});

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: AppInfoTxtConst.appVersion,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text(AppInfoTxtConst.version,
              style: textStyle ?? AppTxtStyles.kTitle24);
        } else {
          return Text(
            'App Version: ${snapshot.data}',
            style: textStyle ?? AppTxtStyles.kTitle24,
          );
        }
      },
    );
  }
}
