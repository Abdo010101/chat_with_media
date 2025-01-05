import 'package:json_annotation/json_annotation.dart';

part 'get_links_response.g.dart';

@JsonSerializable()
class GetLinksResponse {
  List<String>? urls;

  GetLinksResponse({this.urls});

  factory GetLinksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetLinksResponseFromJson(json);
}
