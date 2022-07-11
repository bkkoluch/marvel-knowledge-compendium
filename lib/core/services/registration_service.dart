import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegistrationService {
  Dio get dio => Dio();

  AppRouter get appRouter => AppRouter();

  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
