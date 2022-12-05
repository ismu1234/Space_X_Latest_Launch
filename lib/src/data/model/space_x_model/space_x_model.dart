import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_latest_launch/src/data/model/space_x_model/patch.dart';

import '../../../domain/entities/space_x_entities.dart';
import 'core.dart';
import 'failure.dart';
import 'fairings.dart';
import 'links.dart';

part 'space_x_model.g.dart';

@JsonSerializable()
class SpaceXModel extends Equatable {
  final Fairings? fairings;
  final Links? links;
  @JsonKey(name: 'static_fire_date_utc')
  final DateTime? staticFireDateUtc;
  @JsonKey(name: 'static_fire_date_unix')
  final int? staticFireDateUnix;
  final bool? net;
  final int? window;
  final String? rocket;
  final bool? success;
  final List<Failure>? failures;
  final String? details;
  final List<dynamic>? crew;
  final List<dynamic>? ships;
  final List<dynamic>? capsules;
  final List<String>? payloads;
  final String? launchpad;
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  final String? name;
  @JsonKey(name: 'date_utc')
  final DateTime? dateUtc;
  @JsonKey(name: 'date_unix')
  final int? dateUnix;
  @JsonKey(name: 'date_local')
  final String? dateLocal;
  @JsonKey(name: 'date_precision')
  final String? datePrecision;
  final bool? upcoming;
  final List<Core>? cores;
  @JsonKey(name: 'auto_update')
  final bool? autoUpdate;
  final bool? tbd;
  @JsonKey(name: 'launch_library_id')
  final dynamic launchLibraryId;
  final String? id;
  final Patch? patch;
  final String? small;
  final String? large;

  const SpaceXModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
    this.patch,
    this.small,
    this.large,
  });

  factory SpaceXModel.fromJson(Map<String, dynamic> json) {
    return _$SpaceXModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpaceXModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      fairings,
      links,
      staticFireDateUtc,
      staticFireDateUnix,
      net,
      window,
      rocket,
      success,
      failures,
      details,
      crew,
      ships,
      capsules,
      payloads,
      launchpad,
      flightNumber,
      name,
      dateUtc,
      dateUnix,
      dateLocal,
      datePrecision,
      upcoming,
      cores,
      autoUpdate,
      tbd,
      launchLibraryId,
      id,
    ];
  }

  SpaceXEntities toEntity() => SpaceXEntities(
      name: name,
      details: details,
      large: large,
      patch: patch,
      small: small,
      dateUtc: dateUtc,
      links: links);
}
