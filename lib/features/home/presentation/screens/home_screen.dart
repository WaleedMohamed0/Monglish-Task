import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/presentation/widgets/CurrentLevelContainer.dart';
import 'package:monglish/features/home/presentation/widgets/HomeContainer.dart';
import 'package:monglish/features/home/presentation/widgets/UserInfoContainer.dart';
import 'package:monglish/features/home/presentation/widgets/header_widgets.dart';
import 'package:monglish/features/home/presentation/widgets/package_clubs_widget.dart';
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
          UserInfoWidget(loginCubit: loginCubit),
          10.ph,
          CurrentLevelWidget(),
          30.ph,
          PackageClubsWidget(),
          30.ph,
        ],
      ),
    );
  }
}

