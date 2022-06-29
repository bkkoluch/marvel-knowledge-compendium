abstract class Failure {
  final String? message;

  Failure(this.message);

  @override
  String toString() => message ?? "No message provided";
}
