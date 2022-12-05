part of 'space_x_launch_bloc.dart';

abstract class SpaceXLaunchState extends Equatable {
  const SpaceXLaunchState();

  @override
  List<Object> get props => [];
}

class SpaceXLaunchBlocInitial extends SpaceXLaunchState {
  const SpaceXLaunchBlocInitial();
}

class SpaceXLaunchBlocLoading extends SpaceXLaunchState {
  const SpaceXLaunchBlocLoading();
}

class SpaceXLaunchBlocEmpty extends SpaceXLaunchState {
  const SpaceXLaunchBlocEmpty();
}

class SpaceXLaunchBlocLoaded extends SpaceXLaunchState {
  final List<SpaceXEntities> getSpaceXList;
  const SpaceXLaunchBlocLoaded(this.getSpaceXList);
}

class SpaceXLaunchBlocError extends SpaceXLaunchState {
  final String message;

  const SpaceXLaunchBlocError({required this.message});

  @override
  List<Object> get props => [message];
}
