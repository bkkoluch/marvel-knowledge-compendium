import 'package:dio/dio.dart';
import 'package:marvel_knowledge_compendium/core/error/exception_extensions.dart';

class NonFatalException implements Exception {
  final dynamic error;
  final String description;
  final StackTrace stackTrace;

  NonFatalException(this.error, {required this.description, required this.stackTrace}) {}
}

/// Throw this exception when an error occurred while making a network request or reading its response.
class ServerException extends NonFatalException {
  ServerException(dynamic error, String description, {required StackTrace stackTrace})
      : super(error, stackTrace: stackTrace, description: _formattedDescription(error, description));

  static String _formattedDescription(dynamic error, String description) {
    if (error == null) {
      return description;
    } else if (error is DioError) {
      return "$description: ${error.details}";
    } else {
      return "$description: $error";
    }
  }
}
