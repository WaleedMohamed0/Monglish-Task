part of 'login_cubit.dart';

@immutable
abstract class LoginStates {}

class LoginInitial extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginErrorState extends LoginStates {
  final String errorMessage;

  LoginErrorState(this.errorMessage);
}

class GetUserDataLoadingState extends LoginStates {}

class GetUserDataSuccessState extends LoginStates {}

class GetUserDataErrorState extends LoginStates {}
class ChangePasswordVisibilityState extends LoginStates {}
class ChangeCheckBoxState extends LoginStates {}
