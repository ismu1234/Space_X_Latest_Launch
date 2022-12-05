part of 'space_x_launch_bloc.dart';

abstract class SpaceXLaunchEvent extends Equatable {
  const SpaceXLaunchEvent();

  @override
  List<Object> get props => [];
}

class GetAllSpaceXList extends SpaceXLaunchEvent {
  const GetAllSpaceXList();
}
