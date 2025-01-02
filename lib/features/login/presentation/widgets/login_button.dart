import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(builder: (context, state) {
      if (state is! LoginLoadingState) {
        return Center(
          child: DefaultTextButton(
            text: 'Login',
            onPressed: () {
              context.read<LoginCubit>().userLogin();
            },
            width: 100.w,
            height: 7.h,
          ),
        );
      }
      return Center(
          child: CircularProgressIndicator(color: AppColors.primaryColor));
    });
  }
}
