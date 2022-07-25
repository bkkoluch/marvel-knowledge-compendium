# Marvel Knowledge Compendium

A Flutter app letting you find information related to Marvel universe and it's heroes.

Project was created with Clean Architecture in mind.

##### PlayStore:

<a href='https://play.google.com/store/apps/details?id=com.bkdev.marvel_knowledge_compendium'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png' width="170"/></a>

## Project presentation:
| | | | | | |
|-|-|-|-|-|-|
|![screenshot1](https://user-images.githubusercontent.com/58911502/179616927-00eadc57-76e3-44dc-81cf-f45fca6b6b7e.jpeg)|![screenshot2](https://user-images.githubusercontent.com/58911502/179617026-4f869868-65e5-41c0-95db-0df03fcab49b.jpeg)|![screenshot3](https://user-images.githubusercontent.com/58911502/179617031-7b138bae-40c4-4edc-97c6-3bd689b9c537.jpeg)|![screenshot4](https://user-images.githubusercontent.com/58911502/179617034-e456314f-8188-4749-a338-fb7894b1fe01.jpeg)|![screenshot5](https://user-images.githubusercontent.com/58911502/179617039-4901a38d-c2cd-43e1-873c-1b9948db3120.jpeg)|![screenshot6](https://user-images.githubusercontent.com/58911502/179617047-3b42307f-3b8b-4191-af71-92ccc4e7a02c.jpeg)|

## CI/CD
#### CI/CD solution used for the project is Codemagic, refer to `codemagic.yaml` file and https://codemagic.io/builds

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
