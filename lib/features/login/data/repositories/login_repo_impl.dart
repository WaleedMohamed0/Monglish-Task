import 'package:monglish/features/login/data/apis/login_api_service.dart';
import 'package:monglish/features/login/data/models/user_model.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  LoginApiService loginApiService;

  LoginRepoImpl(this.loginApiService);

  @override
  Future<UserModel?> userLogin({required String email, required String password}) {
    return loginApiService.userLogin(email: email, password: password);
  }
}
