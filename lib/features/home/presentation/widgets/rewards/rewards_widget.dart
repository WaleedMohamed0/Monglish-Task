import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/rewards/helping_others_widget.dart';
import 'package:monglish/features/home/presentation/widgets/rewards/rewards_header_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RewardsWidget extends StatelessWidget {
  const RewardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        color: AppColors.rewardsContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RewardsHeaderWidget(),
            SizedBox(
              height: 15.h,
              child: ListView.separated(
                separatorBuilder: (context, index) => 10.pw,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HelpingOthersWidget(),
                itemCount: 2,
              ),
            )
          ],
        ));
  }
}
