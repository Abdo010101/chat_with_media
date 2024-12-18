import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_request_body.g.dart';

@JsonSerializable()
class VideoRequestBody {
  @JsonKey(ignore: true)
  MultipartFile? video;

  String? question;

  VideoRequestBody({this.video, this.question});

  factory VideoRequestBody.fromJson(Map<String, dynamic> json) =>
      _$VideoRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VideoRequestBodyToJson(this);
}
