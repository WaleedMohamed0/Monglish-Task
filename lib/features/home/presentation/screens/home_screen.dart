import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/features/home/presentation/widgets/header/header_container.dart';
import 'package:monglish/features/home/presentation/widgets/home_body_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
      child: Column(
        spacing: 3.h,
        children: [
          HeaderContainer(),
          HomeBodyContent(),
        ],
      ),
    );
  }
}
