import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:monglish/core/networking/api_service.dart';
import 'package:monglish/core/networking/bloc_observer.dart';
import 'package:monglish/core/networking/network_info.dart';
import 'package:monglish/core/utils/cache_helper.dart';
import 'package:monglish/features/home/data/repositories/home_repo_impl.dart';
import 'package:monglish/features/home/domain/home_repo.dart';
import 'package:monglish/features/login/data/repositories/login_repo_impl.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';

final di = GetIt.instance;

Future<void> init() async {
  await CacheHelper.init();
  Bloc.observer = AppBlocObserver();
  di.registerLazySingleton(() => Dio());
  di.registerLazySingleton(() => ApiService(di<Dio>()));
  di.registerLazySingleton(() => NetworkInfo());
  di.registerLazySingleton<LoginRepo>(
      () => LoginRepoImpl(di<ApiService>(), di<NetworkInfo>()));
  di.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(di<ApiService>(), di<NetworkInfo>()));
}
