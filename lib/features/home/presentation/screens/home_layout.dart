import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/presentation/screens/home_screen.dart';
import 'package:monglish/features/home/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:monglish/features/home/presentation/widgets/menu/menu_header.dart';
import 'package:monglish/features/home/presentation/widgets/menu/menu_list_widget.dart';
import 'package:monglish/features/home/presentation/widgets/menu/menu_right_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        width: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.backgroundColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MenuHeader(),
                      MenuListWidget(),
                      7.ph,
                      Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Image.asset(AppAssets.frameImage, height: 22.h),
                      ),
                    ],
                  ),
                ),
              ),
              MenuRightBar(),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: HomeScreen(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
