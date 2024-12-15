import 'package:dio/dio.dart';
import 'package:monglish/core/utils/app_constants.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseURL,
      headers: {
        'Content-Type': 'application/json',
      },
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String endPoint,
  }) async {
    return await dio!.get(endPoint);
  }

  static Future<Response> postData({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    return await dio!.post(endPoint, data: data);
  }
}
