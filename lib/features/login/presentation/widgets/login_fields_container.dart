import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:monglish/features/login/presentation/widgets/login_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginFieldsContainer extends StatelessWidget {
  const LoginFieldsContainer({
    super.key,
    required this.emailOrUserNameController,
    required this.passwordController,
    required this.loginCubit,
    required this.state,
  });

  final TextEditingController emailOrUserNameController;
  final TextEditingController passwordController;
  final LoginCubit loginCubit;
  final LoginStates state;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: DefaultText(
                text: "Hi, Welcome Back!",
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
          55.ph,
          DefaultText(
              text: "Email or Username", color: AppColors.labelTextColor),
          9.ph,
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextFormField(
                    validationString: "Email or Username",
                    hintText: "Email or Username",
                    borderColor: AppColors.borderColor,
                    controller: emailOrUserNameController,
                    keyboardType: TextInputType.emailAddress),
                30.ph,
                DefaultText(text: "Password", color: AppColors.labelTextColor),
                9.ph,
                DefaultTextFormField(
                    validationString: "Password",
                    hintText: "Enter Password",
                    controller: passwordController,
                    borderColor: AppColors.borderColor,
                    isPassword: true,
                    keyboardType: TextInputType.visiblePassword),
                8.ph,
                DefaultText(
                  text: "Forgot Password?",
                  color: AppColors.primaryColor,
                ),
                35.ph,
                LoginButton(
                    state: state,
                    loginCubit: loginCubit,
                    emailOrUserNameController: emailOrUserNameController,
                    passwordController: passwordController,
                    formKey: formKey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
