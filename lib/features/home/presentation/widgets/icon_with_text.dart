import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    required this.text,
    this.iconPath,
  });

  final String text;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
            padding: EdgeInsets.all(4),
            child: Image.asset(iconPath!)),
        5.pw,
        DefaultText(
          text: text,
          fontSize: 14.sp,
        ),
      ],
    );
  }
}
