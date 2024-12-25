import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/home/data/models/user_data_model.dart';
import 'package:monglish/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:monglish/features/home/presentation/widgets/home_container.dart';
import 'package:monglish/features/home/presentation/widgets/icon_with_text.dart';
import 'package:monglish/features/home/presentation/widgets/user_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserInfoWidgets extends StatelessWidget {
  const UserInfoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      if (state is HomeLoadingState) {
        return _UserDataWidget(
          userDataModel: const UserDataModel(),
        );
      }
      if (state is HomeSuccessState) {
        return _UserDataWidget(
          userDataModel: state.userDataModel,
          isEnabled: false,
        );
      }
      return Container();
    });
  }
}

class _UserDataWidget extends StatelessWidget {
  final UserDataModel userDataModel;
  final bool isEnabled;

  const _UserDataWidget({
    required this.userDataModel,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      color: AppColors.userInfoContainerColor,
      child: Skeletonizer(
        enabled: isEnabled,
        child: Column(
          children: [
            Row(
              children: [
                Skeleton.keep(child: UserImage()),
                10.pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: userDataModel.name!,
                      fontWeight: FontWeight.bold,
                    ),
                    1.ph,
                    DefaultText(
                      text: userDataModel.code!,
                      fontSize: 14.sp,
                    ),
                  ],
                )
              ],
            ),
            15.ph,
            Row(
              children: [
                IconWithText(
                    iconPath: AppAssets.userInfoIcon,
                    text: userDataModel.mobile!),
                60.pw,
                Skeleton.keep(
                    child: IconWithText(
                        text: "12-2-2010", iconPath: AppAssets.userInfoIcon)),
              ],
            ),
            15.ph,
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(4),
                    color: Colors.white,
                    child: Image.asset(AppAssets.userInfoIcon)),
                3.pw,
                SizedBox(
                  width: 35.w,
                  child: DefaultText(
                    text: userDataModel.email!,
                    fontSize: 14.sp,
                  ),
                ),
                3.pw,
                Skeleton.keep(
                    child: IconWithText(
                        text: "Egyptian", iconPath: AppAssets.userInfoIcon)),
                5.pw,
                Skeleton.keep(
                    child: IconWithText(
                        text: "Male", iconPath: AppAssets.userInfoIcon)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
