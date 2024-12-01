import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

// ** NOTE this class depond on the error that come back from the backend NOTE

//! search how to hide auto genereate file
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final dynamic data;
  final int? code;
  final bool? status;

  // @JsonKey(name: 'data')
  // data this is map<String ,dyamic> of errors
  // final dynamic message;

  ApiErrorModel({this.message, this.data, this.code, this.status});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
