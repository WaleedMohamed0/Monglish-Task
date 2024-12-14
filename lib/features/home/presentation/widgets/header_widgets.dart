import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/features/home/presentation/widgets/user_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderWidgets extends StatelessWidget {
  const HeaderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
      child: Row(
        children: [
          Icon(
            Icons.notification_add,
            color: Colors.white,
            size: 30,
          ),
          10.pw,
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          Spacer(),
          UserImage(),
        ],
      ),
    );
  }
}
