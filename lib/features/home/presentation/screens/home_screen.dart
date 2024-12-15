import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/features/home/presentation/widgets/current_level_container.dart';
import 'package:monglish/features/home/presentation/widgets/custom_table_calendar.dart';
import 'package:monglish/features/home/presentation/widgets/user_info/user_info_container.dart';
import 'package:monglish/features/home/presentation/widgets/feedback/feedback_list_widget.dart';
import 'package:monglish/features/home/presentation/widgets/juniors_widget.dart';
import 'package:monglish/features/home/presentation/widgets/package_club/package_clubs_widget.dart';
import 'package:monglish/features/home/presentation/widgets/rewards/rewards_widget.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var loginCubit = LoginCubit.get(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          UserInfoContainer(loginCubit: loginCubit),
          10.ph,
          CurrentLevelWidget(),
          30.ph,
          PackageClubsWidget(),
          20.ph,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: CustomTableCalendar(),
          ),
          25.ph,
          JuniorsWidget(),
          30.ph,
          RewardsWidget(),
          30.ph,
          FeedbackListWidget(),
          30.ph
        ],
      ),
    );
  }
}
