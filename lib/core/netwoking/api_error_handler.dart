

import 'package:dio/dio.dart';
import 'package:media_chat/core/netwoking/api_error_model.dart';

class ApiErrorHanlder {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection Time out');
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to server faliled');
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'the request canceld to server');
        case DioExceptionType.unknown:
          return ApiErrorModel(message: 'Unknow Issue ');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Recieve Time Out Issue ');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Time Send Out Issue');
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        default:
          return ApiErrorModel(message: 'SomeThing went wrong ');
      }
    } else {
      // default error
      return ApiErrorModel(message: "UnKnown dd Error message");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? "Unknow Error Occureds",
    data: data['data'] ?? [],
    code: data['code'],
    status: data['status'],
  );
}
