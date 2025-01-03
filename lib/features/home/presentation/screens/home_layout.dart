import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/di/dependency_injection.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/home/domain/home_repo.dart';
import 'package:monglish/features/home/presentation/home_cubit/home_cubit.dart';
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
    return BlocProvider(
      create: (context) => HomeCubit(di<HomeRepo>())..getStudentByID(),
      child: Scaffold(
          // endDrawer: Drawer(
          //   width: double.infinity,
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: AppColors.loginBackgroundColors,
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //       ),
          //     ),
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: Padding(
          //             padding: EdgeInsets.only(top: 10.h, left: 2.w),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.end,
          //               children: [
          //                 MenuHeader(),
          //                 MenuListWidget(),
          //                 7.ph,
          //                 Padding(
          //                   padding: EdgeInsets.only(right: 5.w),
          //                   child:
          //                       Image.asset(AppAssets.frameImage, height: 22.h),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         MenuRightBar(),
          //       ],
          //     ),
          //   ),
          // ),
          body: HomeScreen(),
          bottomNavigationBar: const CustomBottomNavBar()),
    );
  }
}
