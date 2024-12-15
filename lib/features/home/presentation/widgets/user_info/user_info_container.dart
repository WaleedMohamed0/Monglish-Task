import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/presentation/widgets/header_widgets.dart';
import 'package:monglish/features/home/presentation/widgets/user_info/user_info_widgets.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({
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
          UserInfoWidgets(loginCubit: loginCubit),
        ],
      ),
    );
  }
}


