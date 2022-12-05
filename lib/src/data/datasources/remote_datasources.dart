// ignore_for_file: avoid_print

import 'package:space_x_latest_launch/src/core/network/network_manager.dart';
import 'package:space_x_latest_launch/src/data/model/space_x_model/space_x_model.dart';

import '../../core/contants/url_contants.dart';

abstract class SpaceXRemoteDataSource {
  Future<List<SpaceXModel>> getAllSpaceX();
}

class SpaceXRemoteDataSourceImp implements SpaceXRemoteDataSource {
  final NetworkManager networkManager;

  SpaceXRemoteDataSourceImp(this.networkManager);
  @override
  Future<List<SpaceXModel>> getAllSpaceX() async {
    try {
      final response = await networkManager.dio.get(
        UrlContants.spaceXLaunch,
      );

      final dataList = response.data as List<dynamic>;

      final getAllSpaceXList = dataList
          .map((e) => SpaceXModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return getAllSpaceXList;
    } on Exception catch (e) {
      print(e);
      rethrow;
    }
  }
}
