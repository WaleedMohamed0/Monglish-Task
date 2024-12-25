import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monglish/app/app.dart';
import 'package:monglish/core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const Monglish());
}
