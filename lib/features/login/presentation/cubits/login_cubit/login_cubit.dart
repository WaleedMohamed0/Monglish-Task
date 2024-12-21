import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/features/login/data/models/user_model.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';

part 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  UserModel? userModel;

  void userLogin({required String email, required String password}) async {
    emit(LoginLoadingState());

    userModel = await loginRepo.userLogin(email: email, password: password);
    if (userModel != null) {
      emit(LoginSuccessState());
    } else {
      emit(LoginErrorState());
    }
  }
}
