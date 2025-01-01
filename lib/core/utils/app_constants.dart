import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_assets.dart';

abstract class AppConstants {
  static List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AppAssets.menuIcon)), label: ''),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AppAssets.uptrendIcon)), label: ''),
    BottomNavigationBarItem(icon: Image.asset(AppAssets.homeIcon), label: ''),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AppAssets.videoCameraIcon)), label: ''),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AppAssets.messengerIcon)), label: ''),
  ];

  // static List<String> menuIcons = [
  //   AppAssets.menuDashboardIcon,
  //   AppAssets.schoolIcon,
  //   AppAssets.clubsIcon,
  //   AppAssets.paymentIcon,
  //   AppAssets.discussionIcon,
  //   AppAssets.settingsIcon
  // ];
  // static List<String> menuTexts = [
  //   "Dashboard",
  //   "Schools",
  //   "Classes",
  //   "Clubs",
  //   "Payments",
  //   "Discussion",
  //   "Settings"
  // ];
  static String emailAddressHint = "michael.mitc@example.com";
  static String passwordHint = "•••••••••••";
  static dynamic loggedUserToken = "";
  static dynamic loggedUserId = "";
}
