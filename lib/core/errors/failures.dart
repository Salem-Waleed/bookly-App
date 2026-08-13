
import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad SSL Certificate, connection is untrusted');

      case DioExceptionType.badResponse:
        if (dioError.response != null && dioError.response!.statusCode != null) {
          return ServerFailure.fromResponse(
            dioError.response!.statusCode!,
            dioError.response!.data,
          );
        }
        return ServerFailure('Received invalid response from server');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection or connection failed');

      case DioExceptionType.unknown:
        if (dioError.message != null && dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected Error, please try again later!');

      default:
        return ServerFailure('Opps! There was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      try {
        if (response is Map<String, dynamic> && response.containsKey('error')) {
          return ServerFailure(response['error']['message'] ?? 'Authentication or Client Error');
        } else if (response is Map<String, dynamic> && response.containsKey('message')) {
          return ServerFailure(response['message']);
        }
      } catch (_) {}
      return ServerFailure('Unauthorized request or invalid data');
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps! There was an error, Please try again');
    }
  }
}