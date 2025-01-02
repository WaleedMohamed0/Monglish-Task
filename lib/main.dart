import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monglish/app/app.dart';
import 'package:monglish/core/di/dependency_injection.dart';
import 'package:monglish/core/utils/app_constants.dart';
import 'package:monglish/core/utils/functions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await initCoreServices();
  AppConstants.isUserLoggedIn = await isUserLoggedIn();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const Monglish());
}


