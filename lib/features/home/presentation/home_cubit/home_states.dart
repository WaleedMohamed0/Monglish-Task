part of 'home_cubit.dart';

sealed class HomeStates {}

final class HomeInitialState extends HomeStates {}

final class HomeLoadingState extends HomeStates {}

final class HomeSuccessState extends HomeStates
{
  final UserDataModel userDataModel;

  HomeSuccessState(this.userDataModel);
}

final class HomeErrorState extends HomeStates
{
  final String errorMessage;

  HomeErrorState(this.errorMessage);
}
