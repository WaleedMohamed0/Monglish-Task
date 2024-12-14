import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(AppAssets.packageIcon),
        5.pw,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultText(
              text: "Reading Club",
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
            Row(
              children: [
                DefaultText(
                    text: "Available 5", fontSize: 12.sp),
                3.pw,
                DefaultText(
                    text: "Taken 3", fontSize: 12.sp)
              ],
            )
          ],
        ),
      ],
    );
  }
}
