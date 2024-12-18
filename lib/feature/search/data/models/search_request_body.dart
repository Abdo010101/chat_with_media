import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request_body.g.dart';

@JsonSerializable()
class SearchRequestBody {
  String? query;

  SearchRequestBody({this.query});

  Map<String, dynamic> toJson() => _$SearchRequestBodyToJson(this);
}
