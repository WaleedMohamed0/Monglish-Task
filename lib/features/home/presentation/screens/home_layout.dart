import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/features/home/presentation/screens/home_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomeScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: AppConstants.bottomNavItems,
          backgroundColor: Colors.white,
          currentIndex: 2,
          selectedItemColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
