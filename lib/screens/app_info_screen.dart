import 'package:app_info_smar_unit/constants/app_info_txt_const.dart';
import 'package:app_info_smar_unit/widgets/app_version.dart';
import 'package:app_info_smar_unit/widgets/description_view.dart';
import 'package:app_info_smar_unit/widgets/email_view.dart';
import 'package:app_info_smar_unit/widgets/muted_text.dart';
import 'package:flutter/material.dart';

import '../widgets/app_logo.dart';

class AppInfoScreen extends StatelessWidget {
  const AppInfoScreen(
      {super.key,
        required this.screenTitle,
        this.email,
        this.logoPath,
        required this.descriptionList,
        this.textAlign = TextAlign.left});

  final String screenTitle;
  final String? logoPath;
  final String? email;
  final TextAlign? textAlign;
  final List<String> descriptionList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screenTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              AppLogo(logoPath: logoPath),
              const AppVersion(),
              for (String desc in descriptionList)
                DescriptionView(desc: desc, textAlign: textAlign),
              EmailView(email: email),
              MutedText(title: AppInfoTxtConst.copyrightAllRightReserved),
            ],
          ),
        ),
      ),
    );
  }
}
