import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/features/home/data/models/user_data_model.dart';
import 'package:monglish/features/home/domain/home_repo.dart';

part 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeInitialState());

  Future<void> getStudentByID() async {
    emit(HomeLoadingState());
    ApiResult<UserDataModel> userModel = await homeRepo.getStudentByID();

    userModel.when(
        success: (data) => emit(HomeSuccessState(data)),
        failure: (handler) =>
            emit(HomeErrorState(handler.messageModel.message)));
  }
}
