import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:media_chat/core/helpers/extention.dart';
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
                  return SizedBox(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height / 1.22,
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: _scrollController,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onLongPressStart: (details) {
                                showTranslateMenu(res.response.toString(),
                                    context, details.globalPosition);
                              },
                              child: Column(
                                children: [
                                  Text(
                                    res.response?.isNotEmpty == true
                                        ? res.response.toString()
                                        : "No data available.",
                                    style:
                                        TextStyles.font14BlueSemiBold.copyWith(
                                      color: Colors.white,
                                      fontSize: textSize,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  // Show loading spinner while translating
                                  if (isLoding)
                                    Text(
                                      'Translating Loading.... ',
                                      style: TextStyles.font14BlueSemiBold
                                          .copyWith(
                                        color: Colors.white,
                                        fontSize: textSize,
                                      ),
                                    ),

                                  if (!isLoding && translatedText.isNotEmpty)
                                    Text(
                                      translatedText,
                                      style: TextStyles.font14BlueSemiBold
                                          .copyWith(
                                        color: Colors.white,
                                        fontSize: textSize,
                                      ),
                                      textDirection: langCode == 'ar'
                                          ? TextDirection.rtl
                                          : TextDirection.ltr,
                                    )
                                ],
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
                        ),
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
      ),
    );
  }
}
