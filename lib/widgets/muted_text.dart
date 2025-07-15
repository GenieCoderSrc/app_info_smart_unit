import 'package:flutter/material.dart';

class MutedText extends StatelessWidget {
  const MutedText({
    super.key,
    required this.title,
    this.fontSize,
    this.textAlign = TextAlign.center,
    this.textStyle,
  });

  /// The text to display.
  final String title;

  /// Optional font size override.
  final double? fontSize;

  /// Optional text alignment (default is center).
  final TextAlign textAlign;

  /// Optional custom text style override.
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: height * 0.04),
      child: Text(
        title,
        textAlign: textAlign,
        style: textStyle ??
            Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: fontSize,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
