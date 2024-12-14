import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuRightBar extends StatelessWidget {
  const MenuRightBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: 15.w,
      padding: EdgeInsets.only(top: 10.h, right: 1.w),
      alignment: Alignment.topRight,
      child: IconButton(
          onPressed: () {
            Scaffold.of(context).closeEndDrawer();
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 35,
          )),
    );
  }
}
