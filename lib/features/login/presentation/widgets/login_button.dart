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
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(colors: AppColors.loginBtnColors),
            ),
            child: TextButton(
              onPressed: () {
                context.read<LoginCubit>().userLogin();

                // if (context
                //     .read<LoginCubit>()
                //     .formKey
                //     .currentState!
                //     .validate()) {
                //   context.read<LoginCubit>().userLogin();
                // }
              },
              style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(100.w, 6.h)),
               ),
              child: DefaultText(
                text: "Login",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      }
      return Center(
          child: CircularProgressIndicator(color: AppColors.primaryColor));
    });
  }
}
