import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/service/local_db.dart';
import 'package:media_chat/core/service/textToSpeach.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:translator/translator.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key, required this.state});
  final SearchState state;

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final DatabaseHelper helper = DatabaseHelper();
  List<String> _strings = [];

  double textSize = 14;
  bool isStoped = true;
  final translator = GoogleTranslator();
  String translatedText = "";
  String selectedText = "";
  bool isLoding = false;
  String langCode = "";
  ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose(); // Don't forget to dispose of the controller
    super.dispose();
    insetData();
    _fetchStrings();
  }

  Future<void> _fetchStrings() async {
    final strings = await helper.getStrings();
    setState(() {
      _strings = strings;
    });
  }

  Future<void> insetData() async {
    await helper.saveString(
        "this data is realted to Neurons in the hippocampus are correlated with different variables, including space, time, sensory cues, rewards and actions, in which the extent of tuning depends on ongoing task demands1,2,3,4,5,6,7,8. H");
    await helper.saveString(
        "this data is realted to Neurons in the hippocampus are correlated with different variables, including space, time, sensory cues, rewards and actions, in which the extent of tuning depends on ongoing task demands1,2,3,4,5,6,7,8. H");
  }

  // Function to translate text with loading state
  Future<void> translateText(String targetLanguage, String text) async {
    setState(() {
      isLoding = true; // Start loading
    });

    try {
      var translation = await translator.translate(text, to: targetLanguage);
      setState(() {
        langCode = targetLanguage;
        translatedText = translation.text;
      });
      log(translatedText);
    } catch (e) {
      print("Error during translation: $e");
    } finally {
      setState(() {
        isLoding = false; // Stop loading
      });
    }
  }

  //Show menu on text selection
  void showTranslateMenu(String text, BuildContext context, Offset position) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(position.dx, position.dy, 0, 0),
      items: [
        PopupMenuItem(
          child: Text("Translate to Arabic"),
          onTap: () => translateText("ar", text),
        ),
        PopupMenuItem(
          child: Text("Translate to Spanish"),
          onTap: () => translateText("es", text),
        ),
        PopupMenuItem(
          child: Text("Translate to French"),
          onTap: () => translateText("fr", text),
        ),
        PopupMenuItem(
          child: Text("Translate to German"),
          onTap: () => translateText("de", text),
        ),
      ],
    );
  }

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
        appBar: AppBar(
          backgroundColor: ColorsManager.colorBlack,
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
              widget.state.maybeWhen(searchError: () {
                return Text(
                  "Error happen ",
                  style: TextStyles.font14BlueSemiBold.copyWith(
                    color: Colors.white,
                  ),
                );
              }, searchSuccess: (res) {
                return Container(
                  height: MediaQuery.sizeOf(context).height / 1.29,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onLongPressStart: (LongPressStartDetails details) {
                            final Offset tapPosition = details.globalPosition;
                            showTranslateMenu(
                                res.response.toString(), context, tapPosition);
                          },
                          child: Text(
                            res.response?.isNotEmpty == true
                                ? res.response.toString()
                                : _strings[1],
                            style: TextStyles.font14BlueSemiBold.copyWith(
                              color: Colors.white,
                              fontSize: textSize,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        if (isLoding)
                          Text(
                            'loading......',
                            style: TextStyles.font14BlueSemiBold.copyWith(
                              color: Colors.white,
                              fontSize: textSize,
                            ),
                          ),
                        if (!isLoding && translatedText.isNotEmpty)
                          Text(
                            translatedText,
                            style: TextStyles.font14BlueSemiBold.copyWith(
                              color: Colors.white,
                              fontSize: textSize,
                            ),
                            textDirection: langCode == 'ar'
                                ? TextDirection.rtl
                                : TextDirection.ltr,
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
                                      ))),
                      ],
                    ),
                  ),
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
    );
  }
}
