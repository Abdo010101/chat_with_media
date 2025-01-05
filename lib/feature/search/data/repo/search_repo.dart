import 'dart:developer';

import 'package:media_chat/core/netwoking/api_error_handler.dart';
import 'package:media_chat/core/netwoking/api_result.dart';
import 'package:media_chat/feature/search/data/api/search_api.dart';
import 'package:media_chat/feature/search/data/models/get_links_request_body.dart';
import 'package:media_chat/feature/search/data/models/get_links_response.dart';
import 'package:media_chat/feature/search/data/models/search_request_body.dart';
import 'package:media_chat/feature/search/data/models/search_response.dart';

class SearchRepo {
  final SearchApi _searchApiService;
  SearchRepo(this._searchApiService);

  Future<ApiResult<SearchResponse>> search(
      {required SearchRequestBody param}) async {
    try {
      final response = await _searchApiService.search(param);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHanlder.handle(e));
    }
  }

  ///**************************************************** */

  Future<ApiResult<GetLinksResponse>> getLinks(
      {required GetLinksRequestBody param}) async {
    try {
      final response = await _searchApiService.getLinks(param);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHanlder.handle(e));
    }
  }
}
