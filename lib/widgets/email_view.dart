import 'package:flutter/material.dart';
import 'package:app_info_smart_unit/constants/app_info_txt_const.dart';

class EmailView extends StatelessWidget {
  const EmailView({
    super.key,
    this.email,
    this.textStyle,
    this.textAlign = TextAlign.center,
  });

  /// Email to display. Falls back to developer email if null.
  final String? email;

  /// Custom text style for email display.
  final TextStyle? textStyle;

  /// Text alignment.
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        email ?? AppInfoTxtConst.developerEmail,
        textAlign: textAlign,
        style: textStyle ??
            theme.textTheme.titleMedium?.copyWith(
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}
