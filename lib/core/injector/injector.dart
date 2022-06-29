import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
)
Future<void> configureInjector() async => $initGetIt(getIt);
