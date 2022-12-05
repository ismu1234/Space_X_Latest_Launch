import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:space_x_latest_launch/src/data/datasources/remote_datasources.dart';

import 'package:space_x_latest_launch/src/data/repositories/space_x_repositories_impl.dart';
import 'package:space_x_latest_launch/src/domain/repositories/space_x_repository.dart';
import 'package:space_x_latest_launch/src/presentation/bloc/space_x_launch_bloc.dart';

import 'core/network/network_manager.dart';
import 'domain/usecases/space_x_launch.dart';

final injector = GetIt.instance;

Future<void> init() async {
  // DB

  // bloc
  injector.registerFactory(() => SpaceXLaunchBloc(injector()));

  // usecase
  injector.registerLazySingleton(() => SpaceXLaunch(injector()));

  // repository

  injector.registerLazySingleton<SpaceXRepository>(
    () => SpaceXRemoteDataSourceImpl(remoteDataSource: injector()),
  );

  // data source
  injector.registerLazySingleton<SpaceXRemoteDataSource>(
      () => SpaceXRemoteDataSourceImp(injector()));

  //network
  injector.registerLazySingleton(() => NetworkManager());

  await dotenv.load(fileName: '.env');
}
// space_x_latest_launch