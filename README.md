# Marvel Knowledge Compendium

A Flutter app letting you find information related to Marvel universe and it's heroes.

Project was created with Clean Architecture in mind.

| Type  | Used dependency |
|---|---|
| Navigation | [auto_route](https://pub.dev/packages/auto_route) |
| Http client |  [dio](https://pub.dev/packages/dio) |
| Local storage | [shared_preferences](https://pub.dev/packages/shared_preferences)  |
| Testing mocks | [mocktail](https://pub.dev/packages/mocktail)  |
| Code generation | [freezed](https://pub.dev/packages/freezed) [json_serializable](https://pub.dev/packages/json_serializable)|
| State management  |  [flutter_bloc](https://pub.dev/packages/flutter_bloc) |
| Dependency injection | [get_it](https://pub.dev/packages/get_it) [injectable](https://pub.dev/packages/injectable) |
| Functional programming | [dartz](https://pub.dev/packages/dartz)  |

## How to run the project

#### You should have a valid `keys.dart` file containing secrets.

#### Get all dependencies by running command:

`flutter pub get`

## Tests

#### To run all tests (unit/widget/cubit & bloc)

`flutter test`
