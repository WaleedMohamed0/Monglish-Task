import 'package:flutter/material.dart';
import 'package:monglish/app/app.dart';
import 'package:monglish/core/di/dependency_injection.dart';
import 'package:monglish/core/utils/dio.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  // await DioHelper.init();
  runApp(const Monglish());
}