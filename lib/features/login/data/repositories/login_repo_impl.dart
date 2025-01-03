import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/core/networking/api_service.dart';
import 'package:monglish/core/networking/error_handler.dart';
import 'package:monglish/core/networking/network_info.dart';
import 'package:monglish/features/login/data/models/login_request_body.dart';
import 'package:monglish/features/login/data/models/login_response.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiService _apiService;
  final NetworkInfo _networkInfo;

  const LoginRepoImpl(this._apiService, this._networkInfo);

  @override
  Future<ApiResult<LoginResponse>> userLogin(
      LoginRequestBody loginRequestBody) async {
    if (await _networkInfo.isConnected) {
      try {
        final LoginResponse response =
            await _apiService.login(loginRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(ErrorHandler.handle(NetworkException()));
    }
  }

}
