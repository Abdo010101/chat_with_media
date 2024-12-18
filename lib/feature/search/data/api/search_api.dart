import 'package:dio/dio.dart';
import 'package:media_chat/core/netwoking/api_constant.dart';
import 'package:media_chat/feature/search/data/models/search_request_body.dart';
import 'package:media_chat/feature/search/data/models/search_response.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class SearchApi {
  factory SearchApi(Dio dio) = _SearchApi;

  @POST(ApiConstant.search)
  Future<SearchResponse> search(@Body() SearchRequestBody param);
}
