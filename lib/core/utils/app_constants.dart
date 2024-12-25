import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';

abstract class AppConstants {
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
  static List<String> menuIcons = [
    AppAssets.menuDashboardIcon,
    AppAssets.schoolIcon,
    AppAssets.classesIcon,
    AppAssets.clubsIcon,
    AppAssets.paymentIcon,
    AppAssets.discussionIcon,
    AppAssets.settingsIcon
  ];
  static List<String> menuTexts = [
    "Dashboard",
    "Schools",
    "Classes",
    "Clubs",
    "Payments",
    "Discussion",
    "Settings"
  ];
  static dynamic loggedUserToken = "";
  static dynamic loggedUserId = "";
}
