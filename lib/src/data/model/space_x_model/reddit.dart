import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reddit.g.dart';

@JsonSerializable()
class Reddit extends Equatable {
  final dynamic campaign;
  final dynamic launch;
  final dynamic media;
  final dynamic recovery;

  const Reddit({this.campaign, this.launch, this.media, this.recovery});

  factory Reddit.fromJson(Map<String, dynamic> json) {
    return _$RedditFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RedditToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [campaign, launch, media, recovery];
}
