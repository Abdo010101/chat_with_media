import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:media_chat/core/di/dependency_injection.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/routing/routes.dart';
import 'package:media_chat/core/service/speachToText.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/core/widgets/app_button.dart';
import 'package:media_chat/core/widgets/app_text_form_filed.dart';
import 'package:media_chat/feature/search/logic/search_cubit.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/widgtes/bloc_builder_search_result.dart';
import 'package:media_chat/feature/search/view/widgtes/circle_avatar_gradient.dart';

class QuestionSearchScreen extends StatefulWidget {

  
  @override
  _QuestionSearchScreenState createState() => _QuestionSearchScreenState();
}

class _QuestionSearchScreenState extends State<QuestionSearchScreen> {
  final TextEditingController _questionController = TextEditingController();
  double textSize = 14.0;
  @override
  void dispose() {
    _questionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<SearchCubit>(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorsManager.colorBlack,
            resizeToAvoidBottomInset: false,
            body: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      _buildBackgroundImages(state),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 20),
                          child: Form(
                            key: context.read<SearchCubit>().formkey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (state is SearchSuccess)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("A",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white)),
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
                                            label:
                                                'Font Size: ${textSize.toInt()}',
                                            onChanged: (double value) {
                                              setState(() {
                                                textSize = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      const Text("A",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white)),
                                    ],
                                  ),
                                const SizedBox(
                                  height: 15,
                                ),
                                _buildInputRow(context),
                                const SizedBox(height: 20),
                                BlocBuilderSearchResult(
                                  textSize: textSize,
                                  searchState: state,
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            // bottomNavigationBar: Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 30.0),
            //   child: _buildAskMeButton(context),
            // ),
          );
        },
      ),
    );
  }

  Widget _buildBackgroundImages(SearchState state) {
    return Stack(
      children: [
        const Positioned(
          left: 40,
          bottom: 120,
          child: GradientCircleAvatar(
            text: 'voice',
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned(
            right: 40,
            bottom: 50,
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                context.pushNamed(Routes.textScreen, arguments: state);
              },
              child: const GradientCircleAvatar(
                text: 'Text',
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            )),
      ],
    );
  }

  Widget _buildInputRow(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AppTextFormField(
            hintText: 'Ask Me',
            hintStyle:
                TextStyles.font14LightGrayRegular.copyWith(color: Colors.grey),
            controller: context.read<SearchCubit>().searchController,
            validator: (String? val) {
              if (val.isNullorEmpty()) {
                return 'Field Must Not Be Empty';
              }
              return null;
            },
            onFieldSubmitted: (val) {
              if (context
                  .read<SearchCubit>()
                  .formkey
                  .currentState!
                  .validate()) {
                context.read<SearchCubit>().doSearch();
              }
            },
            suffixIcon: InkWell(
              onTap: () async {
                // Start listening for speech
                await SpeechToTextService.startListening().then((_) {
                  final voiceText = SpeechToTextService.recognizedWords;
                  context
                      .read<SearchCubit>()
                      .changeTextFormFieldBasedOnVoiceUser(
                        voiceUser: voiceText,
                      );
                  log("Recognized Words: $voiceText");
                });
              },
              child: SvgPicture.asset(
                'assets/images/mic.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        // const SizedBox(width: 20),
        // InkWell(
        //   onTap: () {
        //     context.pushNamed(Routes.videoScreen);
        //   },
        //   child: Container(
        //     width: 40,
        //     height: 32,
        //     clipBehavior: Clip.antiAlias,
        //     decoration: ShapeDecoration(
        //       gradient: RadialGradient(
        //         center: const Alignment(0.49, 0.50),
        //         radius: 0.39,
        //         colors: [const Color(0x6600804C), Colors.white.withOpacity(0)],
        //       ),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(74),
        //       ),
        //     ),
        //     child: Image.asset('assets/images/video_svgrepo.com.png'),
        //   ),
        // ),
      ],
    );
  }

  Widget _buildAskMeButton(BuildContext context1) {
    return AppButton(
      onPressed: () {
        if (context1.read<SearchCubit>().formkey.currentState!.validate()) {
          context1.read<SearchCubit>().doSearch();
        }
      },
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      myText: 'Ask Me',
      backGroundColor: const Color(0x6600804C),
      iconPath: '',
    );
  }
}
