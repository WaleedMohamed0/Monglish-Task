import 'package:dio/dio.dart';
import 'package:monglish/core/networking/api_constants.dart';
import 'package:monglish/features/login/data/models/login_request_body.dart';
import 'package:monglish/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndPoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
