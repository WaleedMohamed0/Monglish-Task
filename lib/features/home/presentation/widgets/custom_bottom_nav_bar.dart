import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/utils/app_constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
