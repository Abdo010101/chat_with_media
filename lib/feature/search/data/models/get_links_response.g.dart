// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_links_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLinksResponse _$GetLinksResponseFromJson(Map<String, dynamic> json) =>
    GetLinksResponse(
      urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GetLinksResponseToJson(GetLinksResponse instance) =>
    <String, dynamic>{
      'urls': instance.urls,
    };
