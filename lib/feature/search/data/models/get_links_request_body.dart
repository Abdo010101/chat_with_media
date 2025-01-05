import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_links_request_body.g.dart';

@JsonSerializable()
class GetLinksRequestBody {
  String? query;

  GetLinksRequestBody({this.query});

  Map<String, dynamic> toJson() => _$GetLinksRequestBodyToJson(this);
}
