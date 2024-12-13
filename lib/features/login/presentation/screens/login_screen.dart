import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrUserNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var loginCubit = LoginCubit.get(context);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            Fluttertoast.showToast(
                msg: "Login Success", backgroundColor: AppColors.primaryColor);
            context.pushReplacementNamed(Routes.homeRoute);
          }
          if (state is LoginErrorState) {
            Fluttertoast.showToast(
                msg: "Email Or Password Is Invaild",
                backgroundColor: Colors.red);
          }
        },
        builder: (context, state) {
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
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 8.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text("Hi, Welcome Back!",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: AppColors.primaryColor)),
                            ),
                            30.ph,
                            Text("Email Or Username",
                                style:
                                    TextStyle(color: AppColors.labelTextColor)),
                            9.ph,
                            DefaultTextFormField(
                                validationString: "Email Or Username",
                                hintText: "Email Or Username",
                                borderColor: AppColors.borderColor,
                                controller: emailOrUserNameController,
                                keyboardType: TextInputType.emailAddress),
                            25.ph,
                            Text("Password",
                                style:
                                    TextStyle(color: AppColors.labelTextColor)),
                            9.ph,
                            DefaultTextFormField(
                                validationString: "Password",
                                hintText: "Enter Password",
                                controller: passwordController,
                                borderColor: AppColors.borderColor,
                                isPassword: true,
                                keyboardType: TextInputType.visiblePassword),
                            8.ph,
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            35.ph,
                            Center(
                              child: state is LoginLoadingState
                                  ? CircularProgressIndicator(
                                      color: AppColors.primaryColor)
                                  : TextButton(
                                      onPressed: () {
                                        loginCubit.userLogin(
                                            email:
                                                emailOrUserNameController.text,
                                            password: passwordController.text);
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  AppColors.primaryColor),
                                          foregroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.white),
                                          minimumSize: WidgetStatePropertyAll(
                                              Size(100.w, 7.h)),
                                          shape: WidgetStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8)))),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(fontSize: 17.sp),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
