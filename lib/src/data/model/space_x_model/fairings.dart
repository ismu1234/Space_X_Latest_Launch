import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fairings.g.dart';

@JsonSerializable()
class Fairings extends Equatable {
  final bool? reused;
  @JsonKey(name: 'recovery_attempt')
  final bool? recoveryAttempt;
  final bool? recovered;
  final List<dynamic>? ships;

  const Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
    this.ships,
  });

  factory Fairings.fromJson(Map<String, dynamic> json) {
    return _$FairingsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FairingsToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [reused, recoveryAttempt, recovered, ships];
}
