import 'package:get_it/get_it.dart';
import 'package:monglish/core/utils/dio.dart';
import 'package:monglish/features/login/data/apis/login_api_service.dart';
import 'package:monglish/features/login/data/repositories/login_repo_impl.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  await DioHelper.init();

  di.registerLazySingleton(() => LoginApiService());
  di.registerLazySingleton<LoginRepo>(
      () => LoginRepoImpl(di<LoginApiService>()));

  di.registerLazySingleton(() => LoginCubit(di<LoginRepo>()));
}
