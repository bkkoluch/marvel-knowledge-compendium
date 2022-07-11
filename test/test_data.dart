import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';

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
  )
];

const ComicListDto tComicListDto = ComicListDto(
  available: 12,
  collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics",
  items: [tComicSummaryDto],
  returned: 12,
);

const ComicSummaryDto tComicSummaryDto = ComicSummaryDto(
  resourceURI: "http://gateway.marvel.com/v1/public/comics/21366",
  name: "Avengers: The Initiative (2007) #14",
);

final CharacterDataWrapper tCharacterDataWrapper = CharacterDataWrapperExtension.fromDto(tCharacterDataWrapperDto);
final CharacterDataContainer tCharacterDataContainer =
    CharacterDataContainerExtension.fromDto(tCharacterDataContainerDto);
// Exceptions
final ServerException tServerException = ServerException('', '', stackTrace: StackTrace.current);

// Failures
final ServerFailure tServerFailure = ServerFailure(tServerException.description);
