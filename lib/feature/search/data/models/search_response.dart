import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  String? response;

  SearchResponse({this.response});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
