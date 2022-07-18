import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/data/endpoints.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';

@Injectable(as: ComicsRemoteDataSource)
class ComicsRemoteDataSourceImpl implements ComicsRemoteDataSource {
  final DioClient dioClient;

  const ComicsRemoteDataSourceImpl(this.dioClient);

  @override
  Future<ComicDataWrapperDto> getComicsList({int? offset}) async {
    try {
      final response = await dioClient.dio.get(
        Endpoints.comics(),
        queryParameters: {
          offsetFieldKey: offset,
          limitFieldKey: defaultLimit,
        },
      );
      return ComicDataWrapperDtoExtension.fullFromJson(response.data);
    } catch (e) {
      throw ServerException(e, 'getComicsList()', stackTrace: StackTrace.current);
    }
  }
}
