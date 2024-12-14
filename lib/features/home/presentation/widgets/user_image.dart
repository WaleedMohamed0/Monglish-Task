import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
      },
      child: CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 22.sp,
          child: Image.asset(AppAssets.userImage)),
    );
  }
}
