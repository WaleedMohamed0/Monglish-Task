import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/HomeContainer.dart';
import 'package:monglish/features/home/presentation/widgets/header_widgets.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.loginCubit,
  });

  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.h),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: AppColors.backgroundColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Column(
        children: [
          HeaderWidgets(),
          10.ph,
          Container(
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
                            CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 22.sp,
                                child: Image.asset(AppAssets.userImage)),
                            10.pw,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultText(text: loginCubit.userModel!.name!),
                                DefaultText(text: loginCubit.userModel!.code!),
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
                                text: "12-2-2010",
                                iconPath: AppAssets.userInfoIcon),
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
                                // "yassin@gmail.com",
                                text: loginCubit.userModel!.email!,
                                fontSize: 14.sp,
                              ),
                            ),
                            3.pw,
                            IconWithText(
                                text: "Egyptian",
                                iconPath: AppAssets.userInfoIcon),
                            5.pw,
                            IconWithText(
                                text: "Male", iconPath: AppAssets.userInfoIcon),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
