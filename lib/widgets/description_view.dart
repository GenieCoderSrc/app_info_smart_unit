import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    super.key,
    required this.desc,
    this.textAlign,
    this.textStyle,
  });

  final String desc;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      child: Text(
        desc,
        textAlign: textAlign ?? TextAlign.center,
        style: textStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[700],
              fontSize: 16,
            ),
      ),
    );
  }
}
