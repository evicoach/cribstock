import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:yep/core/error/exceptions.dart';

class DioUtil {
  static String _handleError(DioError error) {
    String errorDescription = "";
    switch (error.type) {
      // case DioErrorType.cancel:
      case DioErrorType.cancel:
        errorDescription = "Request was cancelled, please try again";
        break;
      // case DioErrorType.connectTimeout:
      case DioErrorType.connectTimeout:
        errorDescription =
            "Connection timeout due to internet connection, please try again";
        break;
      // case DioErrorType.sendTimeout:
      case DioErrorType.sendTimeout:
        errorDescription =
            "Connection timeout due to internet connection, please try again";
        break;
      // case DioErrorType.other:
      case DioErrorType.other:
        errorDescription =
            "Connection failed. Check your internet connection and try again";
        break;
      // case DioErrorType.receiveTimeout:
      case DioErrorType.receiveTimeout:
        errorDescription =
            "Receive timeout due to internet connection, please try again";
        break;
      default:
        errorDescription = "";
    }
    return errorDescription;
  }

  static ServerException handleDioError(DioError error) {
    print("Handling dio error ${error.response}");
    String errorMessage = _handleError(error);
    if (errorMessage.isNotEmpty) return ServerException(message: errorMessage);
    if (error.response != null) {
      var data = error.response?.data;
      debugPrint("The error $data");
      if (data["detail"] != null) {
        return ServerException(
            message: (data["detail"] as String), data: data["data"]);
      }
    }
    // else {
    debugPrint("An error ${error.message}");
    return ServerException(message: error.message);
    // }
  }
}
