import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_reponse.g.dart';

@JsonSerializable()
class VideoReponse {
  String? response;

  VideoReponse({this.response});

  factory VideoReponse.fromJson(Map<String, dynamic> json) =>
      _$VideoReponseFromJson(json);
}
