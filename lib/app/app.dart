import 'package:flutter/material.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Monglish extends StatelessWidget {
  const Monglish({super.key});

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
      builder: (context, p0, p1) => MaterialApp.router(
          builder: (context, child) => child!,
          routerConfig: AppRoutes.router,
          theme: ThemeData(
            fontFamily: "Poppins",
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
          debugShowCheckedModeBanner: false),
    );
  }
}
