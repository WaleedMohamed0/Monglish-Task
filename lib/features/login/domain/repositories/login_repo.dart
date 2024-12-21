import 'package:monglish/features/login/data/models/user_model.dart';

abstract class LoginRepo
{
  Future<UserModel?> userLogin({required String email, required String password});
}