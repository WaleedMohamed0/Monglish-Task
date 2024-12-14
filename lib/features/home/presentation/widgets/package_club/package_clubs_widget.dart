import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/package_club/package_widget.dart';

class PackageClubsWidget extends StatelessWidget {
  const PackageClubsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
        color: AppColors.packageClubsContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
                text: "Package Clubs", fontWeight: FontWeight.bold),
            10.ph,
            GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 50,
                    mainAxisSpacing: 7,
                    crossAxisCount: 2),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return PackageWidget();
                })
          ],
        ));
  }
}

