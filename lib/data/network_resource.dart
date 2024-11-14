import 'dart:io';

import 'package:dio/dio.dart';

import '../utils.dart';

enum NetworkStatus { success, error }

class NetworkResource<T> {
  final NetworkStatus status;
  final T? data;
  final int? statusCode;
  final String? errorMessage;

  ///These properties are later passed on to RequestInfo classes at the base service level and should not be used for anything pertaining to network resource data handling.
  NetworkResource({
    required this.status,
    this.statusCode,
    this.data,
    this.errorMessage,
  });

  factory NetworkResource.success({
    required T data,
    int? statusCode,
    Response? response,
  }) =>
      NetworkResource(
        status: NetworkStatus.success,
        statusCode: statusCode,
        data: data,
        errorMessage: null,
      );

  factory NetworkResource.error({
    String? errorMessage,
    int? statusCode,
    Response? response,
  }) =>
      NetworkResource(
        status: NetworkStatus.error,
        statusCode: statusCode,
        data: null,
        errorMessage: errorMessage,
      );

  factory NetworkResource.errorFrom(DioException error) {
    if (error.response != null) {
      dynamic errorJson = error.response!.data;
      int? statusCode = error.response!.statusCode;
      if (errorJson is List && isEmptyList(errorJson)) {
        return NetworkResource.error(
            errorMessage: 'Connection error',
            statusCode: statusCode,
            response: error.response!);
      }
      if (errorJson['error'] is String) {
        return NetworkResource.error(
            errorMessage: errorJson['error'],
            statusCode: statusCode,
            response: error.response!);
      }
      if (errorJson['error'] is Map<String, dynamic>) {
        return NetworkResource.error(
            errorMessage: errorJson['error']['message'],
            statusCode: statusCode,
            response: error.response!);
      }
      return NetworkResource.error(
          errorMessage: 'Connection error',
          statusCode: statusCode,
          response: error.response);
    } else {
      return NetworkResource.error(
          errorMessage: 'Connection error',
          statusCode: HttpStatus.unprocessableEntity,
          response: error.response);
    }
  }
}
