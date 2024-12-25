import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/core/utils/cache_helper.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () async {
      AppConstants.loggedUserToken = await CacheHelper.getData(key: "token");
      AppConstants.loggedUserId = await CacheHelper.getData(key: "id");
      if (mounted) {
        AppConstants.loggedUserToken != null
            ? context.pushReplacementNamed(Routes.homeRoute)
            : context.pushReplacementNamed(Routes.loginRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: AppColors.backgroundColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                AppAssets.logo,
                width: 80.w,
                height: 20.h,
              ),
              20.ph,
              Image.asset(
                AppAssets.boy,
                width: 60.w,
                height: 40.h,
              ),
              50.ph,
              Container(
                width: double.infinity,
                height: 6.h,
                color: AppColors.splashTextBackgroundColor,
                alignment: Alignment.center,
                child: DefaultText(
                  text: 'YOUR PATH TO FLUENCY',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
