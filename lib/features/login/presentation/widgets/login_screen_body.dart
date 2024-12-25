import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:monglish/features/login/presentation/widgets/login_fields_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(listener: (context, state) {
      if (state is LoginSuccessState) {
        Fluttertoast.showToast(
            msg: "Login Success", backgroundColor: AppColors.primaryColor);
        context.pushReplacementNamed(Routes.homeRoute);
      }
      if (state is LoginErrorState) {
        Fluttertoast.showToast(
            msg: state.errorMessage, backgroundColor: Colors.red);
      }
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5.h),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: AppColors.backgroundColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  Image.asset(
                    AppAssets.logo,
                    height: 15.h,
                  ),
                  const LoginFieldsContainer(),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
