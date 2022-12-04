import 'package:get_it/get_it.dart';

import 'core/network/network_manager.dart';

final injector = GetIt.instance;

Future<void> init() async {
  // DB

  // bloc

  // usecase

  // repository

  // data source

  //network
  injector.registerLazySingleton(() => NetworkManager());
}
