import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

enum HomePageStateStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  const factory HomePageState({
    required HomePageStateStatus status,
    required List<String> homePageImages,
  }) = _HomePageState;

  factory HomePageState.initial() => const HomePageState(
        status: HomePageStateStatus.loading,
        homePageImages: [],
      );
}
