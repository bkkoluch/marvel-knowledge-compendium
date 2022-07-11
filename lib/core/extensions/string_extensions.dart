extension PossibleNullStringExtensions on String? {
  bool isNotBlank() => this != null && this!.isNotEmpty;

  bool isBlank() => !isNotBlank();
}
