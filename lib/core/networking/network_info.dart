import 'package:internet_connection_checker/internet_connection_checker.dart';
class NetworkInfo {
  Future<bool> get isConnected => InternetConnectionChecker.instance.hasConnection;
}