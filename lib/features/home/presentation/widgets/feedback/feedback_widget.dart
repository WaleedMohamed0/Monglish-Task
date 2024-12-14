import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/star_list_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.3.h, horizontal: 3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppAssets.feedbackImage),
                  10.pw,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DefaultText(text: "Mr. Mostafa Sayed"),
                          75.pw,
                          DefaultText(
                            text: "1 day",
                            fontSize: 13.sp,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          StarListWidget(
                            itemCount: 3,
                            iconPath: AppAssets.selectedStarIcon,
                          ),
                          2.pw,
                          StarListWidget(
                            itemCount: 2,
                            iconPath: AppAssets.unSelectedStarIcon,
                          ),
                          57.pw,
                          DefaultText(
                            text: "3.0",
                            fontSize: 13.sp,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          8.ph,
          DefaultText(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
            fontSize: 13.sp,
            maxLines: 3,
          )
        ],
      ),
    );
  }
}
