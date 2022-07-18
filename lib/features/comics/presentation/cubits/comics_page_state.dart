import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';

part 'comics_page_state.freezed.dart';

enum ComicsPageStateStatus {
  initial,
  comicsWrapperLoaded,
  loadingNewComics,
  searchSubmitted,
  error,
}

@freezed
class ComicsPageState with _$ComicsPageState {
  const ComicsPageState._();

  const factory ComicsPageState({
    required ComicsPageStateStatus status,
    ComicDataContainer? comicsDataContainer,
  }) = _ComicsPageState;

  factory ComicsPageState.initial() => const ComicsPageState(status: ComicsPageStateStatus.initial);

  bool get isInitialState => status == ComicsPageStateStatus.initial;

  bool get isComicsWrapperLoaded => status == ComicsPageStateStatus.comicsWrapperLoaded;

  bool get isLoadingNewComics => status == ComicsPageStateStatus.loadingNewComics;

  bool get wereComicsSearched => status == ComicsPageStateStatus.searchSubmitted;

  bool get areMoreComicsAvailable => ((comicsDataContainer?.results ?? []).length) < (comicsDataContainer?.total ?? 0);
}
