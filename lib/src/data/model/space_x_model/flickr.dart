import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'flickr.g.dart';

@JsonSerializable()
class Flickr extends Equatable {
  final List<dynamic>? small;
  final List<dynamic>? original;

  const Flickr({this.small, this.original});

  factory Flickr.fromJson(Map<String, dynamic> json) {
    return _$FlickrFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlickrToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [small, original];
}
