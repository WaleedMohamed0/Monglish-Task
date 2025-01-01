import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/core/widgets.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:monglish/features/login/presentation/widgets/login_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginFieldsContainer extends StatelessWidget {
  const LoginFieldsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          Fluttertoast.showToast(
              msg: "Login Success", backgroundColor: AppColors.primaryColor);
          context.pushReplacementNamed(Routes.homeRoute);
        }
        if (state is LoginErrorState) {
          Fluttertoast.showToast(
              msg: state.errorMessage, backgroundColor: Colors.red);
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(text: "Email Address", fontSize: 14.sp),
            4.ph,
            Form(
              key: context.read<LoginCubit>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextFormField(
                      validationString: "Email Address",
                      hintText: AppConstants.emailAddressHint,
                      suffixIcon: ImageIcon(
                        AssetImage(AppAssets.emailSuffixIcon),
                      ),
                      borderColor: AppColors.borderColor,
                      controller:
                          context.read<LoginCubit>().emailOrUserNameController,
                      keyboardType: TextInputType.emailAddress),
                  10.ph,
                  DefaultText(text: "Password", fontSize: 14.sp),
                  3.ph,
                  DefaultTextFormField(
                      validationString: "Password",
                      suffixIcon: IconButton(
                          icon: Icon(context.read<LoginCubit>().suffixIcon),
                          onPressed: () => context
                              .read<LoginCubit>()
                              .changePasswordVisibility()),
                      hintText: AppConstants.passwordHint,
                      controller: context.read<LoginCubit>().passwordController,
                      borderColor: AppColors.borderColor,
                      isPassword: context.read<LoginCubit>().isPass,
                      keyboardType: TextInputType.visiblePassword),
                  1.ph,
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 8.w,
                            child: Checkbox(
                              value: context.read<LoginCubit>().isChecked,
                              side: WidgetStateBorderSide.resolveWith(
                                  (states) => BorderSide(color: Colors.white)),
                              focusColor: Colors.white,
                              checkColor: AppColors.primaryColor,
                              hoverColor: Colors.white,
                              activeColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onChanged: (value) {
                                context.read<LoginCubit>().changeCheckBox();
                              },
                            ),
                          ),
                          DefaultText(
                            text: "Remember me",
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                      Spacer(),
                      DefaultText(
                        text: "Forgot Your Password?",
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                  4.ph,
                  const LoginButton(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
