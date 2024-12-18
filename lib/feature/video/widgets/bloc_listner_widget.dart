import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_chat/feature/video/logic/vido_cubit.dart';
import 'package:media_chat/feature/video/logic/vido_state.dart';
import 'package:media_chat/feature/video/widgets/show_buneer.dart';

class BlocListnerWidget extends StatelessWidget {
  const BlocListnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VidoCubit, VidoState>(
      listener: (context, state) {
        if (state is AskVideoApiLoading) {
          return showLoadingBanner(context);
        }
        if (state is AskVideoApiSuccess) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 3,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(state.response.response.toString()),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the bottom sheet
                      },
                      child: Text('Dismiss'),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
      child: SizedBox.shrink(),
    );
  }
}
