import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RewardsHeaderWidget extends StatelessWidget {
  const RewardsHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Row(
        children: [
          DefaultText(text: "Rewards", fontWeight: FontWeight.bold),
          45.pw,
          LinearPercentIndicator(
            percent: 0.5,
            lineHeight: 1.h,
            width: 50.w,
            backgroundColor: AppColors.progressIndicatorBackgroundColor,
            progressColor: AppColors.progressIndicatorColor,
            padding: EdgeInsets.zero,
            barRadius: Radius.circular(10),
            animationDuration: 2000,
            curve: Curves.easeInOut,
          )
        ],
      ),
    );
  }
}
