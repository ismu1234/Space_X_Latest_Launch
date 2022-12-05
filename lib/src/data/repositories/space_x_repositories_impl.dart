// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/network/network_exception.dart';

import '../../domain/entities/space_x_entities.dart';
import '../../domain/repositories/space_x_repository.dart';
import '../datasources/remote_datasources.dart';

class SpaceXRemoteDataSourceImpl implements SpaceXRepository {
  final SpaceXRemoteDataSource remoteDataSource;

  SpaceXRemoteDataSourceImpl({required this.remoteDataSource});
  @override
  Future<Either<NetworkExceptions, List<SpaceXEntities>>>
      getAllSpaceXList() async {
    try {
      final value = await remoteDataSource.getAllSpaceX();

      final list = value.map((e) => e.toEntity()).toList();
      print(list);
      return Right(list);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }
}
