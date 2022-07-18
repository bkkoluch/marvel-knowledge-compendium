import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/secrets/keys.dart' as keys;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String offsetFieldKey = "offset";
const String limitFieldKey = "limit";
const int defaultLimit = 100;

const String _apiFieldKey = 'apikey';
const String _tsFieldKey = 'ts';
const String _hashFieldKey = 'hash';

@injectable
class DioClient {
  final Dio dio;

  const DioClient._(this.dio);

  @factoryMethod
  factory DioClient.createDioClient() {
    final BaseOptions options = _baseOptions(keys.baseUrl);
    final DioClient dioClient = DioClient._(Dio(options)..interceptors.add(_PrettyDioLogger()));

    return dioClient;
  }

  static BaseOptions _baseOptions(String baseUrl) {
    final Map<String, String> headers = {"content-Type": "application/json"};

    final String ts = DateTime.now().millisecondsSinceEpoch.toString();
    final String dataToHash = '$ts${keys.apiPrivateKey}${keys.apiPublicKey}';
    final Digest hash = md5.convert(utf8.encode(dataToHash));

    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      receiveTimeout: 10000,
      headers: headers,
      queryParameters: {_tsFieldKey: ts, _apiFieldKey: keys.apiPublicKey, _hashFieldKey: hash},
    );
    return options;
  }
}

class _PrettyDioLogger extends PrettyDioLogger {
  @override
  bool get requestBody => true;

  @override
  int get maxWidth => 150;
}
