import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const HomeContainer({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90.w,
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)), color: color),
        child: child);
  }
}
