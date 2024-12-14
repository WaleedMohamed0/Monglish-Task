import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/custom_grid_view.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';

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
            CustomGridView(
              child: IconWithText(
                  text: "LG Kids - Juniors",
                  iconPath: AppAssets.currentLevelIcon),
            )
          ],
        ));
  }
}
