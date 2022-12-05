import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch.g.dart';

@JsonSerializable()
class Patch extends Equatable {
  final String? small;
  final String? large;

  const Patch({this.small, this.large});

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [small, large];
}
