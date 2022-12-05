import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'core.g.dart';

@JsonSerializable()
class Core extends Equatable {
  final String? core;
  final int? flight;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  @JsonKey(name: 'landing_attempt')
  final bool? landingAttempt;
  @JsonKey(name: 'landing_success')
  final dynamic landingSuccess;
  @JsonKey(name: 'landing_type')
  final dynamic landingType;
  final dynamic landpad;

  const Core({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
    this.landingSuccess,
    this.landingType,
    this.landpad,
  });

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);

  Map<String, dynamic> toJson() => _$CoreToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      core,
      flight,
      gridfins,
      legs,
      reused,
      landingAttempt,
      landingSuccess,
      landingType,
      landpad,
    ];
  }
}
