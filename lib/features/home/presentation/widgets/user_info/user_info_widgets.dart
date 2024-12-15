import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';
import 'package:monglish/features/home/presentation/widgets/user_image.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserInfoWidgets extends StatelessWidget {
  const UserInfoWidgets({
    super.key,
    required this.loginCubit,
  });

  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          HomeContainer(
              color: AppColors.userInfoContainerColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      UserImage(),
                      10.pw,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: loginCubit.userModel!.name!,
                            fontWeight: FontWeight.bold,
                          ),
                          1.ph,
                          DefaultText(
                            text: loginCubit.userModel!.code!,
                            fontSize: 14.sp,
                          ),
                        ],
                      )
                    ],
                  ),
                  15.ph,
                  Row(
                    children: [
                      IconWithText(
                          iconPath: AppAssets.userInfoIcon,
                          text: loginCubit.userModel!.mobile!),
                      60.pw,
                      IconWithText(
                          text: "12-2-2010", iconPath: AppAssets.userInfoIcon),
                    ],
                  ),
                  15.ph,
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(4),
                          color: Colors.white,
                          child: Image.asset(AppAssets.userInfoIcon)),
                      3.pw,
                      SizedBox(
                        width: 35.w,
                        child: DefaultText(
                          text: loginCubit.userModel!.email!,
                          fontSize: 14.sp,
                        ),
                      ),
                      3.pw,
                      IconWithText(
                          text: "Egyptian", iconPath: AppAssets.userInfoIcon),
                      5.pw,
                      IconWithText(
                          text: "Male", iconPath: AppAssets.userInfoIcon),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
