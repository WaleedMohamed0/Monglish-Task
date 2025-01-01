import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/custom_grid_view.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JuniorsWidget extends StatelessWidget {
  const JuniorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        color: AppColors.juniorsContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(text: "Juniors 2O", fontWeight: FontWeight.bold),
            DefaultText(
              text: "LG Kids -  Juniors -  Level 2",
              fontSize: 12.sp,
              color: AppColors.headerTextContainerColor,
            ),
            CustomGridView(
                child: IconWithText(
                  text: "4 Students",
                  iconPath: AppAssets.messengerIcon,
                )),
          ],
        ));
  }
}
