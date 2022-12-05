import 'package:equatable/equatable.dart';

import '../../data/model/space_x_model/links.dart';
import '../../data/model/space_x_model/patch.dart';

class SpaceXEntities extends Equatable {
  final String? name;
  final String? details;
  final Patch? patch;
  final String? small;
  final String? large;
  final DateTime? dateUtc;
  final Links? links;

  const SpaceXEntities({
    this.name,
    this.details,
    this.patch,
    this.small,
    this.large,
    this.dateUtc,
    this.links,
  });

  @override
  List<Object?> get props {
    return [name, details, patch, small, large, dateUtc];
  }
}
