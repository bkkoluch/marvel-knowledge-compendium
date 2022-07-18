import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/bloc.dart';

class CharactersPageBloc extends Bloc<CharactersPageEvent, CharactersPageState> {
  CharactersPageBloc() : super(CharactersPageState.initial()) {
    on<CharactersPageSaveInitialUnfilteredDataEvent>(_onCharactersPageSaveInitialUnfilteredDataEvent);
    on<CharactersPageLoadMoreCharactersEvent>(_onCharactersPageLoadMoreCharactersEvent);
    on<CharactersPageSearchCharacterByNameEvent>(_onCharactersPageSearchCharacterByNameEvent);
  }

  void _onCharactersPageSaveInitialUnfilteredDataEvent(
    CharactersPageSaveInitialUnfilteredDataEvent event,
    Emitter<CharactersPageState> emit,
  ) async {
    final CharacterDataContainer? savedCharacterDataContainer = (await getIt.getAsync<GetSavedCharactersUseCase>())();

    if (savedCharacterDataContainer == null) {
      await ((await getIt.getAsync<SaveCharactersUseCase>())(event.characterDataContainer));
    }

    emit(
      state.copyWith(
        characterDataContainer:
            savedCharacterDataContainer != null ? savedCharacterDataContainer : event.characterDataContainer,
        status: CharactersPageStateStatus.charactersWrapperLoaded,
      ),
    );
  }

  Future<void> _onCharactersPageLoadMoreCharactersEvent(
    CharactersPageLoadMoreCharactersEvent event,
    Emitter<CharactersPageState> emit,
  ) async {
    emit(state.copyWith(status: CharactersPageStateStatus.loadingNewCharacters));

    final result = await getIt<GetAllCharactersUseCase>()(event.offset);

    return result.fold(
      (_) => emit(state.copyWith(status: CharactersPageStateStatus.error)),
      (CharacterDataWrapper characterDataWrapper) async {
        final List<Character> newCharacterListToEmit = [
          ...?state.characterDataContainer?.results,
          ...?characterDataWrapper.data?.results,
        ];

        final CharacterDataContainer characterDataContainerToEmit =
            state.characterDataContainer!.copyWith(results: newCharacterListToEmit.toSet().toList());

        emit(
          state.copyWith(
            status: CharactersPageStateStatus.charactersWrapperLoaded,
            characterDataContainer: characterDataContainerToEmit,
          ),
        );

        // Save new CharacterDataContainer when new characters are loaded
        unawaited((await getIt.getAsync<SaveCharactersUseCase>())(characterDataContainerToEmit));
      },
    );
  }

  Future<void> _onCharactersPageSearchCharacterByNameEvent(
    CharactersPageSearchCharacterByNameEvent event,
    Emitter<CharactersPageState> emit,
  ) async {
    final CharacterDataContainer? savedCharacterDataContainer = (await getIt.getAsync<GetSavedCharactersUseCase>())();
    if (savedCharacterDataContainer != null) {
      if ((event.name.isEmpty || event.name == '' || event.name.length == 0)) {
        emit(
          state.copyWith(
            status: CharactersPageStateStatus.charactersWrapperLoaded,
            characterDataContainer: savedCharacterDataContainer,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: CharactersPageStateStatus.searchSubmitted,
            characterDataContainer: state.characterDataContainer?.copyWith(
              results: savedCharacterDataContainer.results!
                  .where((Character character) => character.name!.toLowerCase().contains(event.name.toLowerCase()))
                  .toList(),
            ),
          ),
        );
      }
    }
  }
}
