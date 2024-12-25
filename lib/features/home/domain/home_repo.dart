import 'package:monglish/core/networking/api_result.dart';
import 'package:monglish/features/home/data/models/user_data_model.dart';

abstract class HomeRepo {
  Future<ApiResult<UserDataModel>> getStudentByID();
}
