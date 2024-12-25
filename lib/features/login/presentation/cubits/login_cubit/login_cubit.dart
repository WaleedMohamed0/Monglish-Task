import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/core/utils/cache_helper.dart';
import 'package:monglish/features/login/data/models/login_request_body.dart';
import 'package:monglish/features/login/data/models/login_response.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';

part 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginInitial());
  final TextEditingController emailOrUserNameController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ApiResult<LoginResponse>? userModel;

  Future<void> userLogin() async {
    emit(LoginLoadingState());

    LoginRequestBody loginRequestBody = LoginRequestBody(
        email: emailOrUserNameController.text,
        password: passwordController.text);
    userModel = await loginRepo.userLogin(loginRequestBody);
    userModel!.when(
        success: (data) {
          CacheHelper.saveData(key: "id", value: data.id);
          CacheHelper.saveData(key: "token", value: "Bearer ${data.token}");
          AppConstants.loggedUserToken = "Bearer ${data.token}";
          AppConstants.loggedUserId = data.id;
          emit(LoginSuccessState());
        },
        failure: (handler) =>
            emit(LoginErrorState(handler.messageModel.message)));
  }

  @override
  Future<void> close() {
    emailOrUserNameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
