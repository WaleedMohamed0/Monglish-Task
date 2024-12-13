import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/HomeContainer.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CurrentLevelWidget extends StatelessWidget {
  const CurrentLevelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        color: AppColors.currentLevelContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(text: "Current Level", fontWeight: FontWeight.bold),
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconWithText(
                            text: "LG Kids - Juniors",
                            iconPath: AppAssets.currentLevelIcon),
                        10.pw,
                        IconWithText(
                            text: "2 remaining Levels",
                            iconPath: AppAssets.currentLevelIcon),
                      ],
                    ),
                    10.ph,
                    Row(
                      children: [
                        IconWithText(
                            text: "Active",
                            iconPath: AppAssets.currentLevelIcon),
                        85.pw,
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(4),
                                color: Colors.white,
                                child: Image.asset(AppAssets.currentLevelIcon)),
                            3.pw,
                            SizedBox(
                              width: 35.w,
                              child: DefaultText(
                                  text: "Old Package expires on...",
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
