import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:monglish/core/networking/message_model.dart';

class ErrorHandler {
  late MessageModel messageModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      messageModel = _handleDioError(error);
    } else if (error is NetworkException) {
      messageModel = MessageModel(ErrorMessages.connectionError);
    } else {
      debugPrint(error.toString());
      messageModel = MessageModel(error.toString());
    }
  }

  MessageModel _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return MessageModel(ErrorMessages.connectionTimeout);
      case DioExceptionType.sendTimeout:
        return MessageModel(ErrorMessages.sendTimeout);
      case DioExceptionType.receiveTimeout:
        return MessageModel(ErrorMessages.receiveTimeout);
      case DioExceptionType.badCertificate:
        return MessageModel(ErrorMessages.badCertificate);
      case DioExceptionType.badResponse:
        {
          final int? statusCode = error.response?.statusCode;
          // Handle 422 error
          if (statusCode == 422) {
            return MessageModel.fromJson(error.response?.data);
          } else {
            return MessageModel(ErrorMessages.badResponse);
          }
        }
      case DioExceptionType.cancel:
        return MessageModel(ErrorMessages.cancelRequest);
      case DioExceptionType.connectionError:
        return MessageModel(ErrorMessages.connectionError);
      case DioExceptionType.unknown:
        return MessageModel(ErrorMessages.unKnownError);
    }
  }
}

class NetworkException implements Exception {
  const NetworkException();
}

abstract class ErrorMessages {
  static const String connectionTimeout = "connectionTimeout";
  static const String sendTimeout = "sendTimeout";
  static const String receiveTimeout = "receiveTimeout";
  static const String badCertificate = "badCertificate";
  static const String badResponse = "badResponse";
  static const String cancelRequest = "cancelRequest";
  static const String connectionError = "connectionError";
  static const String unKnownError = "unKnownError";
  static const String defaultError = "defaultError";
}
