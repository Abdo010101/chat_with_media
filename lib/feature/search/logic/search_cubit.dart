import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:media_chat/feature/search/data/models/search_request_body.dart';
import 'package:media_chat/feature/search/data/repo/search_repo.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;
  SearchCubit(this._searchRepo) : super(const SearchState.initial());

  final TextEditingController searchController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  //******************************************************************************************************** */
  void doSearch() async {
    emit(const SearchState.searchLoading());
    SearchRequestBody param =
        SearchRequestBody(query: searchController.text.toString());

    final response = await _searchRepo.search(param: param);
    response.when(success: (sresponse) {
      emit(SearchState.searchSuccess(sresponse));
    }, failure: (apiErrorModel) {
      emit(SearchState.searchError(apiErrorModel));
    });
  }
  //******************************************************************************************************** */
}