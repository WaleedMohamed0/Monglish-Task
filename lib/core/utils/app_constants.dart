import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';

abstract class AppConstants {
  static const String baseURL = "https://monglishtest.fekracomputers.net/api/";
  static List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.moreIcon),
      label: 'More',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.classesIcon),
      label: 'Classes',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.dashboardIcon),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.clubsIcon),
      label: 'Clubs',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.discussionIcon),
      label: 'Discussion',
    ),
  ];
}
