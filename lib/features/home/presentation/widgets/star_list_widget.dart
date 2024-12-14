import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StarListWidget extends StatelessWidget {
  final int itemCount;
  final String iconPath;

  const StarListWidget({
    super.key,
    required this.itemCount,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.h,
      width: 10.w,
      child: ListView.separated(
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => 5.pw,
          itemBuilder: (context, index) => Image.asset(iconPath)),
    );
  }
}
