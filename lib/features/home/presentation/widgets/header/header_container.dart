import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      padding: EdgeInsets.only(left: 4.w, top: 1.h, right: 4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Row(
        children: [
          Image.asset("assets/images/icons/ProfilePic.png"),
          3.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.welcomeHomeImage),
              2.ph,
              DefaultText(
                text: 'Amr Mahmoud',
                color: Colors.black,
                fontSize: 13.sp,
              ),
            ],
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 32,
            ),
          ),
          Spacer(),
          NotificationWidget(),
        ],
      ),
    );
  }
}
class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.grey),
          ),
          child: Icon(Icons.notifications_none_outlined, size: 28),
        ),
        Positioned(
            top: -3,
            right: -3,
            child: CircleAvatar(
              backgroundColor: AppColors.backgroundColor,
              radius: 8,
              child: DefaultText(text: '2',fontSize: 13.sp,),
            ))
      ],
    );
  }
}

