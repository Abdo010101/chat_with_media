import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media_chat/core/netwoking/api_error_model.dart';
import 'package:media_chat/feature/search/data/models/get_links_response.dart';
import 'package:media_chat/feature/search/data/models/search_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchSuccess(SearchResponse response) =
      SearchSuccess;
  const factory SearchState.searchError(ApiErrorModel apiErrorModel) =
      SearchError;

  const factory SearchState.getLinksLoading() = GetLinkLoading;
  const factory SearchState.getLinksSuccess(GetLinksResponse response) =
      GetLinksSuccess;
  const factory SearchState.getLinksError(ApiErrorModel apiErrorModel) =
      GetLinksError;

  const factory SearchState.changeTextFormFieldBasedOnVoiceLoading() =
      ChangeTextFormFieldBasedOnVoiceLoading;
  const factory SearchState.changeTextFormFieldBasedOnVoiceSuccess() =
      ChangeTextFormFieldBasedOnVoiceSuccess;
}
