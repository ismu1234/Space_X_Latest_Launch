import 'package:dartz/dartz.dart';
import 'package:space_x_latest_launch/src/domain/repositories/space_x_repository.dart';

import '../../core/network/network_exception.dart';
import '../entities/space_x_entities.dart';

class SpaceXLaunch {
  final SpaceXRepository _spaceXRepository;

  SpaceXLaunch(this._spaceXRepository);

  Future<Either<NetworkExceptions, List<SpaceXEntities>>> getAllSpaceXList() {
    return _spaceXRepository.getAllSpaceXList();
  }
}
