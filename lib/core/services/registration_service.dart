import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';

@module
abstract class RegistrationService {
  Dio get dio => Dio();

  AppRouter get appRouter => AppRouter();
}
