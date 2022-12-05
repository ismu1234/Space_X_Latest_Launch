import 'package:dartz/dartz.dart';
import 'package:space_x_latest_launch/src/domain/entities/space_x_entities.dart';

import '../../core/network/network_exception.dart';

abstract class SpaceXRepository {
  Future<Either<NetworkExceptions, List<SpaceXEntities>>> getAllSpaceXList();
}
