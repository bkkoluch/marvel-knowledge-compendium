import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';

import 'test_json_data.dart';

// Characters
const String tCharacterId = '1';
const String tCharacterName = 'A-Bomb';
const int tOffset = 100;

final CharacterDataWrapperDto tCharacterDataWrapperDtoFromJSON =
    CharacterDataWrapperDtoExtension.fullFromJson(tCharacterDataWrapperDtoJSON);

final CharacterDataContainer tCharacterDataContainerFromJSON =
    CharacterDataContainerExtension.fullFromJson(tCharacterDataContainerJSON);

final CharacterDataWrapperDto tCharacterDataWrapperDto = CharacterDataWrapperDto(
  code: 200,
  status: "Ok",
  copyright: "© 2022 MARVEL",
  attributionText: "Data provided by Marvel. © 2022 MARVEL",
  attributionHTML: "<a href=\"http://marvel.com\">Data provided by Marvel. © 2022 MARVEL</a>",
  etag: "6b3a1ed580583f03eacae1f6824771aace3b7cde",
  data: tCharacterDataContainerDto,
);

final CharacterDataContainerDto tCharacterDataContainerDto = CharacterDataContainerDto(
  offset: 0,
  limit: 2,
  total: 1562,
  count: 2,
  results: tCharacterDtoList,
);

final List<CharacterDto> tCharacterDtoList = [
  CharacterDto(
    id: 1011334,
    name: "3-D Man",
    description: "",
    modified: DateTime.tryParse("2014-04-29T14:18:17-0400"),
    thumbnail: const ImageDto(path: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784", extension: "jpg"),
    resourceURI: "http://gateway.marvel.com/v1/public/characters/1011334",
    comics: tComicListDto,
    series: tSeriesListDto,
    stories: tStoryListDto,
  )
];

const StoryListDto tStoryListDto = StoryListDto(
  available: 1,
  collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics",
  items: [tStorySummaryDto],
  returned: 1,
);

const SeriesListDto tSeriesListDto = SeriesListDto(
  available: 1,
  collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics",
  items: [tSeriesSummaryDto],
  returned: 1,
);

const ComicListDto tComicListDto = ComicListDto(
  available: 1,
  collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics",
  items: [tComicSummaryDto],
  returned: 1,
);

const ComicSummaryDto tComicSummaryDto = ComicSummaryDto(
  resourceURI: "http://gateway.marvel.com/v1/public/comics/21366",
  name: "Avengers: The Initiative (2007) #14",
);

const SeriesSummaryDto tSeriesSummaryDto = SeriesSummaryDto(
  resourceURI: '',
  name: '',
);

const StorySummaryDto tStorySummaryDto = StorySummaryDto(
  resourceURI: '',
  name: '',
);

final CharacterDataWrapper tCharacterDataWrapper = CharacterDataWrapperExtension.fromDto(tCharacterDataWrapperDto);
final CharacterDataContainer tCharacterDataContainer =
    CharacterDataContainerExtension.fromDto(tCharacterDataContainerDto);

final Character tCharacter = Character.fromDto(tCharacterDtoList.first);

// Comics

final ComicDataWrapperDto tComicDataWrapperDtoFromJSON =
    ComicDataWrapperDtoExtension.fullFromJson(tComicDataWrapperDtoJSON);

final ComicDataContainer tComicDataContainerFromJSON =
    ComicDataContainerExtension.fullFromJson(tComicDataContainerDtoJSON);

final ComicDataWrapperDto tComicDataWrapperDto = ComicDataWrapperDto(
  code: 200,
  status: "Ok",
  copyright: "© 2022 MARVEL",
  attributionText: "Data provided by Marvel. © 2022 MARVEL",
  attributionHTML: "<a href=\"http://marvel.com\">Data provided by Marvel. © 2022 MARVEL</a>",
  etag: "6b3a1ed580583f03eacae1f6824771aace3b7cde",
  data: tComicDataContainerDto,
);

final ComicDataContainerDto tComicDataContainerDto = ComicDataContainerDto(
  offset: 0,
  limit: 2,
  total: 1562,
  count: 2,
  results: tComicsDtoList,
);

final List<ComicDto> tComicsDtoList = [tComicDto, tComicDto];

final ComicDto tComicDto = ComicDto(
  id: 1011334,
  description: "",
  modified: DateTime.tryParse("2014-04-29T14:18:17-0400"),
  thumbnail: const ImageDto(path: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784", extension: "jpg"),
  resourceURI: "http://gateway.marvel.com/v1/public/characters/1011334",
  series: tSeriesSummaryDto,
  stories: tStoryListDto,
  collections: [tComicSummaryDto],
);

final ComicDto tComicDifferentDto = tComicDto.copyWith(id: 1011331);

final ComicDataWrapper tComicDataWrapper = ComicDataWrapperExtension.fromDto(tComicDataWrapperDto);

final ComicDataWrapper tComicDataDifferentWrapper = tComicDataWrapper
  ..data?.copyWith(
    results: [Comic.fromDto(tComicDto), Comic.fromDto(tComicDifferentDto)],
  );

final ComicDataContainer tComicDataContainer = ComicDataContainerExtension.fromDto(tComicDataContainerDto);

// Exceptions
final ServerException tServerException = ServerException('', '', stackTrace: StackTrace.current);

// Failures
final ServerFailure tServerFailure = ServerFailure(tServerException.description);
