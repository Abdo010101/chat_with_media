import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:media_chat/core/di/dependency_injection.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/core/widgets/app_button.dart';
import 'package:media_chat/core/widgets/app_text_form_filed.dart';
import 'package:media_chat/core/widgets/arrow_back.dart';
import 'package:chewie/chewie.dart';
import 'package:media_chat/feature/video/logic/vido_cubit.dart';
import 'package:media_chat/feature/video/logic/vido_state.dart';
import 'package:media_chat/feature/video/widgets/bloc_listner_widget.dart';
import 'package:media_chat/feature/video/widgets/custom_painter.dart';
import 'package:media_chat/feature/video/widgets/show_buneer.dart';

class VideoDropArea extends StatefulWidget {
  @override
  State<VideoDropArea> createState() => _VideoDropAreaState();
}

class _VideoDropAreaState extends State<VideoDropArea> {
  @override
  void dispose() {
    getIt.get<VidoCubit>().videoController?.dispose();
    getIt.get<VidoCubit>().chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<VidoCubit>(),
      child: Scaffold(
        backgroundColor: ColorsManager.colorBlack,
        body: Stack(
          children: [
            // Positioned(
            //     left: 0,
            //     right: 0,
            //     top: 100,
            //     child: Image.asset(
            //       'assets/images/Ellipse 14.png',
            //       fit: BoxFit.scaleDown,
            //     )),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 30),
                  child: BlocBuilder<VidoCubit, VidoState>(
                    builder: (context, state) {
                      return Form(
                        key: context.read<VidoCubit>().formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GradientBorderWidget(
                              onTap: () => context.pop(),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            _buildVideoPicker(context),
                            const SizedBox(
                              height: 40,
                            ),
                            _buildTextFormField(context),
                            const Spacer(),
                            _buildAskMeButton(context, state),
                            BlocListnerWidget(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPicker(BuildContext context) {
    return GestureDetector(
      onTap: context.read<VidoCubit>().pickVideo,
      child: Center(
        child: Container(
          constraints: BoxConstraints.tight(const Size(350, 250)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: const GradientBoxBorder(
              gradient: RadialGradient(
                center: Alignment(0.49, 0.50),
                radius: 0.39,
                colors: [
                  Color(0xFF00804C),
                  Colors.blue,
                ],
              ),
              width: 3, // Adjust the border width as needed
            ),
          ),
          child: Center(
            child: context.read<VidoCubit>().pickedVideoPath == null
                ? _buildPlaceholder(context)
                : _buildVideoPlayer(context),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.video_library,
          size: 50,
          color: const Color(0x6600804C),
        ),
        SizedBox(height: 10),
        Text(
          'Drag Video from Gallery',
          style: TextStyle(fontSize: 16, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildVideoPlayer(BuildContext context) {
    if (context.read<VidoCubit>().isError ||
        context.read<VidoCubit>().chewieController == null) {
      return const Text(
        'Error loading video',
        style: TextStyle(color: Colors.red),
        textAlign: TextAlign.center,
      );
    }

    return Column(
      children: [
        AspectRatio(
            aspectRatio: 16 / 10,
            child: Chewie(
                controller: context.read<VidoCubit>().chewieController!)),
        const SizedBox(height: 20),
        // ElevatedButton(
        //   onPressed: () {
        //     setState(() {
        //       if (context.read<VidoCubit>().chewieController!.isPlaying) {
        //         context.read<VidoCubit>().chewieController!.pause();
        //       } else {
        //         context.read<VidoCubit>().chewieController!.play();
        //       }
        //     });
        //   },
        //   child: Icon(
        //     context.read<VidoCubit>().chewieController!.isPlaying
        //         ? Icons.pause
        //         : Icons.play_arrow,
        //   ),
        // ),
      ],
    );
  }

  Widget _buildTextFormField(
    BuildContext context,
  ) {
    return AppTextFormField(
      hintText: 'Enter Your Questions',
      hintStyle: TextStyles.font14LightGrayRegular.copyWith(color: Colors.grey),
      controller: context.read<VidoCubit>().askController,
      validator: (String? val) {
        if (val.isNullorEmpty()) {
          return 'Field must not be empty';
        }
        return null;
      },
    );
  }

  Widget _buildAskMeButton(BuildContext context, VidoState state) {
    return AppButton(
      onPressed: () async {
        if (context.read<VidoCubit>().formKey.currentState!.validate() &&
            context.read<VidoCubit>().pickedVideoPath != null) {
          await context.read<VidoCubit>().sendVideo();
        }
      },
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      myText: state is AskVideoApiLoading ? 'LOADING......' : 'Ask Me',
      backGroundColor: const Color(0x6600804C),
      iconPath: '',
    );
  }
}
