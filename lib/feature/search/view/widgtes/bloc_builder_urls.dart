import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/feature/search/logic/search_cubit.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/widgtes/shimmer_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlocBuilderUrls extends StatelessWidget {
  const BlocBuilderUrls({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (prev, cur) =>
          cur is GetLinksError ||
          cur is GetLinksSuccess ||
          cur is GetLinkLoading,
      builder: (context, state) {
        return state.maybeWhen(getLinksSuccess: (response) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height / 2,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () async {
                      final controller = WebViewController()
                        ..setJavaScriptMode(JavaScriptMode.unrestricted)
                        ..setNavigationDelegate(
                          NavigationDelegate(
                            onProgress: (int progress) {
                              // Update loading bar.
                              log('Hellosdf');
                            },
                            onPageStarted: (String url) {},
                            onPageFinished: (String url) {},
                            onHttpError: (HttpResponseError error) {},
                            onWebResourceError: (WebResourceError error) {},
                            onNavigationRequest: (NavigationRequest request) {
                              if (request.url
                                  .startsWith('https://www.youtube.com/')) {
                                return NavigationDecision.prevent;
                              }
                              return NavigationDecision.navigate;
                            },
                          ),
                        )
                        ..loadRequest(Uri.parse(
                            response.urls?[index].toString() ??
                                "fake webistsre"));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WebViewWidget(controller: controller)),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        response.urls?[index].toString() ?? "fake url",
                        style: TextStyles.font14BlueSemiBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      leading: const Icon(
                        Icons.open_in_browser_rounded,
                        color: Colors.green,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: response.urls?.length ?? 1),
          );
        }, getLinksError: (apiErrormodel) {
          return Text(apiErrormodel.message ?? "There is an error herer");
        }, getLinksLoading: () {
          return const Expanded(
              child: Center(
                  child: MultiLineShimmer(
            lineCount: 10,
            spacing: 20,
            height: 16,
          )));
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}
