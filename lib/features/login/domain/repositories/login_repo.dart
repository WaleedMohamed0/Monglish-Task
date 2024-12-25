import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/features/login/data/models/login_request_body.dart';
import 'package:monglish/features/login/data/models/login_response.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> userLogin(LoginRequestBody loginRequestBody);
}
