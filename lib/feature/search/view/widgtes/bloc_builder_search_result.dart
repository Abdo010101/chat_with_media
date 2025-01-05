import 'package:flutter/material.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/widgtes/shimmer_widget.dart';

class BlocBuilderSearchResult extends StatelessWidget {
  const BlocBuilderSearchResult(
      {super.key, required this.searchState, required this.textSize});
  final SearchState searchState;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return searchState.maybeWhen(searchError: (apiErrorModel) {
      return Center(
        child: Text(
          apiErrorModel.message ?? "SomeThing went Wrong .. please try again ",
          style: TextStyles.font14BlueSemiBold.copyWith(color: Colors.red),
        ),
      );
    }, searchSuccess: (resposne) {
      return SuccessData(
        response: resposne.response,
        searchState: searchState,
        textSize: textSize,
      );
    }, searchLoading: () {
      return const Expanded(
          child: Center(
              child: MultiLineShimmer(
        lineCount: 10,
        spacing: 30,
        height: 20,
      )));
    }, orElse: () {
      return const SizedBox.shrink();
    });
  }
}

class SuccessData extends StatefulWidget {
  const SuccessData(
      {super.key,
      required this.response,
      required this.searchState,
      required this.textSize});
  final String? response;
  final SearchState searchState;
  final double textSize;
  @override
  State<SuccessData> createState() => _SuccessDataState();
}

class _SuccessDataState extends State<SuccessData> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "Tap to Speak",
      child: GestureDetector(
        onTap: () async {
          // await TextToSpeechService.speak(text: widget.response.toString());
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                widget.response?.isNotEmpty == true
                    ? widget.response.toString()
                    : "No data available.",
                style: TextStyles.font14BlueSemiBold.copyWith(
                  color: Colors.white,
                  fontSize: widget.textSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
