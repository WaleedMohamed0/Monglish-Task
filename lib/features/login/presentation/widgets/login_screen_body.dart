import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/widgets/login_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 30.h),
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.backgroundImage),
                fit: BoxFit.cover),
            color: AppColors.backgroundColor),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaintContainer(
              content: LoginContainer(),
            ),
            Positioned(
                top: -30, left: 15, child: Image.asset(AppAssets.cubeImage))
          ],
        ),
      ),
    );
  }
}
