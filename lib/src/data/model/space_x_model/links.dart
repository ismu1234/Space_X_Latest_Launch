import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

part 'links.g.dart';

@JsonSerializable()
class Links extends Equatable {
  final Patch? patch;
  final Reddit? reddit;
  final Flickr? flickr;
  final dynamic presskit;
  final String? webcast;
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  final String? article;
  final String? wikipedia;

  const Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      patch,
      reddit,
      flickr,
      presskit,
      webcast,
      youtubeId,
      article,
      wikipedia,
    ];
  }
}
