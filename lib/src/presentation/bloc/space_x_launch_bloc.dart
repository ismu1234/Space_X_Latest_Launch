import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/space_x_entities.dart';
import '../../domain/usecases/space_x_launch.dart';

part 'space_x_launch_event.dart';
part 'space_x_launch_state.dart';

class SpaceXLaunchBloc extends Bloc<SpaceXLaunchEvent, SpaceXLaunchState> {
  final SpaceXLaunch _spaceXLaunch;
  SpaceXLaunchBloc(this._spaceXLaunch)
      : super(const SpaceXLaunchBlocInitial()) {
    on<GetAllSpaceXList>((event, emit) async {
      emit(const SpaceXLaunchBlocLoading());
      try {
        final result = await _spaceXLaunch.getAllSpaceXList();
        result.fold(
            (failure) => emit(SpaceXLaunchBlocError(message: failure.message)),
            (data) {
          if (data.isEmpty) {
            emit(const SpaceXLaunchBlocEmpty());
          } else {
            emit(SpaceXLaunchBlocLoaded(data));
          }
        });
      } on Exception catch (_) {
        emit(const SpaceXLaunchBlocError(message: 'An problem has occured'));
      }
    });
  }
}
