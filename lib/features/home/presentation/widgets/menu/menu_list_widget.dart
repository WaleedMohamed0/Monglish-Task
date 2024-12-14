import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/features/home/presentation/widgets/menu/menu_item.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 5),
          child: DottedLine(
            direction: Axis.horizontal,
            dashColor: Colors.white70,
            dashGapLength: 2,
          ),
        ),
        itemCount: AppConstants.menuIcons.length,
        itemBuilder: (context, index) => MenuItem(
          text: AppConstants.menuTexts[index],
          iconPath: AppConstants.menuIcons[index],
        ));
  }
}
