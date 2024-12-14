import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpingOthersWidget extends StatelessWidget {
  const HelpingOthersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.3.h, horizontal: 3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(text: "Helping Others"),
          17.ph,
          SizedBox(
            width: 34.w,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(AppAssets.rewardsHandImage, height: 55),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          AppAssets.rewardsHandNotificationImage,
                        ),
                      ),
                    ),
                  ],
                ),
                7.pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: "Mr. Ahmed",
                      fontSize: 13.5.sp,
                    ),
                    DefaultText(
                      text: "12/4/2024",
                      fontSize: 13.5.sp,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
