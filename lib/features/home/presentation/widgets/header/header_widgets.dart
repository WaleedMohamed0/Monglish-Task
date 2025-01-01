import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/user_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderWidgets extends StatefulWidget {
  const HeaderWidgets({super.key});

  @override
  State<HeaderWidgets> createState() => _HeaderWidgetsState();
}

class _HeaderWidgetsState extends State<HeaderWidgets> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
      child: Container(
        height: 7.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white
        ),
        child: Row(
          children: [
            UserImage(),
            Column(
              children: [
                Image.asset(AppAssets.welcomeHomeImage),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
