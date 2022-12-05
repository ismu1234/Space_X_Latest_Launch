import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

@JsonSerializable()
class Failure extends Equatable {
  final int? time;
  final dynamic altitude;
  final String? reason;

  const Failure({this.time, this.altitude, this.reason});

  factory Failure.fromJson(Map<String, dynamic> json) {
    return _$FailureFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FailureToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [time, altitude, reason];
}
