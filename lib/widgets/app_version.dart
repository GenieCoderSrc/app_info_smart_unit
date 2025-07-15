import 'package:flutter/material.dart';
import 'package:app_info_smart_unit/constants/app_info_txt_const.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key, this.textStyle});

  /// Optional custom text style for the version text.
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.titleMedium;

    return FutureBuilder<String>(
      future: AppInfoTxtConst.appVersion,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }

        final style = textStyle ?? defaultStyle;

        if (snapshot.hasError) {
          return Text(
            AppInfoTxtConst.version,
            style: style,
          );
        }

        return Text(
          'App Version: ${snapshot.data ?? 'Unknown'}',
          style: style,
        );
      },
    );
  }
}
