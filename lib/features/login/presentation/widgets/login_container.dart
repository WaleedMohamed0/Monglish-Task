import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/widgets/login_fields_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w, bottom: 2.h),
      height: 56.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultText(
            text: "WELCOME BACK",
            fontSize: 21.sp,
            letterSpacing: 1.8,
          ),
          RichText(
            textAlign: TextAlign.center,
            softWrap: true,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "To",
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                ),
                TextSpan(
                  text: " Monglish Academy",
                  style: TextStyle(
                    fontSize: 22.sp,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          18.ph,
          LoginFieldsContainer()
        ],
      ),
    );
  }
}
