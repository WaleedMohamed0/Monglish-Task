import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white),
            top: BorderSide(color: Colors.white),
            left: BorderSide(
              color: Colors.white,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          )),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.primaryColor, width: 2),
              ),
              child: Image.asset(AppAssets.userImage)),
          8.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: 'Welcome Ahmed Mohamed',
                color: Colors.white,
                fontSize: 14.sp,
              ),
              7.ph,
              DefaultText(
                text: '29501',
                color: Colors.white,
                fontSize: 13.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
