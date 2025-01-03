import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/feedback/feedback_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FeedbackListWidget extends StatelessWidget {
  const FeedbackListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        color: AppColors.feedbackContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(text: "Feedback", fontWeight: FontWeight.bold),
            ListView.separated(
              separatorBuilder: (context, index) => 10.ph,
              shrinkWrap: true,
              itemCount: 2,
              padding: EdgeInsets.only(top: 2.h),
              itemBuilder: (context, index) => FeedbackWidget(),
            ),
          ],
        ));
  }
}
