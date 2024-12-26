import 'package:flutter/material.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/service/textToSpeach.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key, required this.state});
  final SearchState state;

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  double textSize = 14;
  bool isStoped = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        await TextToSpeechService.stop();
        return;
      },
      child: Scaffold(
        backgroundColor: ColorsManager.colorBlack,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("A",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    Semantics(
                      label: "Text size slider",
                      child: RotatedBox(
                        quarterTurns: 0,
                        child: Slider(
                          thumbColor: Colors.green,
                          value: textSize,
                          min: 10.0,
                          max: 30.0,
                          divisions: 40,
                          activeColor: Colors.green,
                          label: 'Font Size: ${textSize.toInt()}',
                          onChanged: (double value) {
                            setState(() {
                              textSize = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const Text("A",
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                widget.state.maybeWhen(searchError: (err) {
                  return Text(
                    err.toString(),
                    style: TextStyles.font14BlueSemiBold.copyWith(
                      color: Colors.white,
                    ),
                  );
                }, searchSuccess: (res) {
                  return Column(
                    children: [
                      Semantics(
                        label: "Tap to Speak",
                        child: GestureDetector(
                          onTap: () async {},
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Scrollbar(
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                  res.response?.isNotEmpty == true
                                      ? res.response.toString()
                                      : "No data available.",
                                  style: TextStyles.font14BlueSemiBold.copyWith(
                                    color: Colors.white,
                                    fontSize: textSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () async {
                                setState(() {
                                  isStoped = !isStoped;
                                });
                                if (isStoped == false) {
                                  await TextToSpeechService.speak(
                                      text: res.response.toString());
                                } else {
                                  await TextToSpeechService.stop();
                                }
                              },
                              icon: isStoped
                                  ? const Icon(
                                      Icons.volume_off,
                                      color: Colors.green,
                                      size: 35,
                                    )
                                  : const Icon(
                                      Icons.volume_up,
                                      color: Colors.green,
                                      size: 35,
                                    )))
                    ],
                  );
                }, searchLoading: () {
                  return Text(
                    'loading.....',
                    style: TextStyles.font14BlueSemiBold.copyWith(
                      color: Colors.white,
                    ),
                  );
                }, orElse: () {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left,
                          size: 30,
                        ),
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Please Ask Me ',
                        style: TextStyles.font14BlueSemiBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
