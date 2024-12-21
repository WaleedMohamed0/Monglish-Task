import 'package:monglish/core/utils/dio.dart';
import 'package:monglish/features/login/data/models/user_model.dart';

class LoginApiService {
  Future<UserModel?> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await DioHelper.postData(
        endPoint: "login",
        data: {
          "email": email.trim(),
          "password": password,
        },
      );
      return UserModel.fromJson(response.data);
    } catch (error) {
      print("Login Error: ${error.toString()}");
      return null;
    }
  }

}
