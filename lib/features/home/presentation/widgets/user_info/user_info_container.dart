import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/presentation/widgets/header_widgets.dart';
import 'package:monglish/features/home/presentation/widgets/user_info/user_info_widgets.dart';
import 'package:monglish/features/login/data/models/login_response.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserInfoContainer extends StatelessWidget {
  final LoginResponse loginResponse;

  const UserInfoContainer({super.key, required this.loginResponse});

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
          UserInfoWidgets(loginResponse: loginResponse),
        ],
      ),
    );
  }
}
