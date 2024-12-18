import 'package:flutter/material.dart';
import 'package:media_chat/core/netwoking/api_error_model.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/widgtes/shimmer_widget.dart';

class BlocBuilderSearchResult extends StatelessWidget {
  const BlocBuilderSearchResult({super.key, required this.searchState});
  final SearchState searchState;
  @override
  Widget build(BuildContext context) {
    return searchState.maybeWhen(searchError: (apiErrorModel) {
      return Text(apiErrorModel.toString());
    }, searchSuccess: (resposne) {
      return Expanded(child: Text(resposne.response.toString()));
    }, searchLoading: () {
      return const Expanded(
          child: Center(
              child: MultiLineShimmer(
        lineCount: 10,
        spacing: 16,
        height: 14,
      )));
    }, orElse: () {
      return const SizedBox.shrink();
    });
  }
}
