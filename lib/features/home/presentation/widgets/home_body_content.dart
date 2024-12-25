import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/features/home/presentation/widgets/current_level_container.dart';
import 'package:monglish/features/home/presentation/widgets/custom_table_calendar.dart';
import 'package:monglish/features/home/presentation/widgets/feedback/feedback_list_widget.dart';
import 'package:monglish/features/home/presentation/widgets/juniors_widget.dart';
import 'package:monglish/features/home/presentation/widgets/package_club/package_clubs_widget.dart';
import 'package:monglish/features/home/presentation/widgets/rewards/rewards_widget.dart';
import 'package:monglish/features/home/presentation/widgets/user_info/user_info_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15.h,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 2.h,
            children: [
              10.ph,
              UserInfoWidgets(),
              CurrentLevelWidget(),
              PackageClubsWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                child: CustomTableCalendar(),
              ),
              JuniorsWidget(),
              RewardsWidget(),
              FeedbackListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
