import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  Failure(this.message);

  @override
  String toString() => message ?? "No message provided";

  @override
  List<Object> get props => [message ?? ""];
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class GenericFailure extends Failure {
  GenericFailure(String message) : super(message);
}
