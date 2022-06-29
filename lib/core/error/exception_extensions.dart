import 'package:dio/dio.dart';

extension DioErrorExtension on DioError? {
  String get details => "${this?.requestOptions.path} ${this?.response?.statusCode}: ${this?.message}";
}
