import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/presentation/widgets/header/header_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: PreferredSize(
        preferredSize: Size.fromHeight(16.h),
        child: Container(
          padding: EdgeInsets.only(top: 2.5.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: AppColors.backgroundColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: HeaderWidgets(),
        ),
      ),
    );
  }
}
