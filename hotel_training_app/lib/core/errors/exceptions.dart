import 'package:dio/dio.dart';

class GenericException implements Exception {
  GenericException({required this.message});

  final String message;
}

class ServerException extends DioException {
  ServerException({
    required super.requestOptions,
    required super.message,
  });
}
