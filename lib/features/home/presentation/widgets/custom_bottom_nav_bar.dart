import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/utils/app_constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
      ),
      child: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Scaffold.of(context).openEndDrawer();
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: AppConstants.bottomNavItems,
        backgroundColor: Colors.white,
        currentIndex: 2,
        selectedItemColor: AppColors.primaryColor,
      ),
    );
  }
}
