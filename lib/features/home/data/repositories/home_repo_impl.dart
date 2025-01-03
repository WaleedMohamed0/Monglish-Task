import 'package:flutter/foundation.dart';
import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/core/networking/api_service.dart';
import 'package:monglish/core/networking/error_handler.dart';
import 'package:monglish/core/networking/network_info.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/features/home/data/models/user_data_model.dart';
import 'package:monglish/features/home/domain/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;
  final NetworkInfo _networkInfo;

  const HomeRepoImpl(this._apiService, this._networkInfo);

  @override
  Future<ApiResult<UserDataModel>> getStudentByID() async {
    if (await _networkInfo.isConnected) {
      try {
        final UserDataModel response = await _apiService.getStudentByID(
            AppConstants.loggedUserId, AppConstants.loggedUserToken);
        return ApiResult.success(response);
      } catch (error) {
        if(kDebugMode) {
          print(error.toString());
        }
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(ErrorHandler.handle(NetworkException()));
    }
  }
}
