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
    return Container(
      // padding: EdgeInsets.only(top: 2.5.h),
      decoration: BoxDecoration(
       color: AppColors.backgroundColor
      ),
      child: HeaderWidgets(),
    );
  }
}
