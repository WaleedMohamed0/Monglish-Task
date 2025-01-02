import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/networking/bloc_observer.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/core/utils/cache_helper.dart';

initCoreServices() async
{
  await initCacheHelper();
  await initBlocObserver();
}

initCacheHelper() async {
  await CacheHelper.init();
}

initBlocObserver() {
  Bloc.observer = AppBlocObserver();
}

Future<bool> isUserLoggedIn() async {
  AppConstants.loggedUserToken = await CacheHelper.getData(key: "token");
  AppConstants.loggedUserId = await CacheHelper.getData(key: "id");
  return AppConstants.loggedUserToken != null;
}
