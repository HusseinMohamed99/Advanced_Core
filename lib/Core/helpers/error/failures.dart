import 'package:advanced_core/Core/helpers/utils/app_string.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(AppStringError.connectionTimeout);
      case DioExceptionType.sendTimeout:
        return ServerFailure(AppStringError.sendTimeout);

      case DioExceptionType.receiveTimeout:
        return ServerFailure(AppStringError.receiveTimeout);

      case DioExceptionType.badCertificate:
        return ServerFailure(AppStringError.badCertificate);

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(AppStringError.serverCancelled);

      case DioExceptionType.connectionError:
        return ServerFailure(AppStringError.failedInternetConnection);

      case DioExceptionType.unknown:
        if (dioException.message!.contains(AppStringError.socketException)) {
          return ServerFailure(AppStringError.noInternetConnection);
        }
        return ServerFailure(AppStringError.unexpectedError);
      default:
        return ServerFailure(AppStringError.unexpectedError);
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
          response[AppStringError.error][AppStringError.message]);
    } else if (statusCode == 404) {
      return ServerFailure(AppStringError.requestNotFound);
    } else if (statusCode == 500) {
      return ServerFailure(AppStringError.internalServerError);
    } else {
      return ServerFailure(AppStringError.somethingWentWrong);
    }
  }
}
