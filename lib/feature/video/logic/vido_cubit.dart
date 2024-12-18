import 'dart:developer';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_chat/feature/video/data/models/video_reponse.dart';
import 'package:media_chat/feature/video/data/models/video_request_body.dart';
import 'package:media_chat/feature/video/data/repo/video_repo.dart';
import 'package:media_chat/feature/video/logic/vido_state.dart';
import 'package:video_player/video_player.dart';
import 'package:http_parser/http_parser.dart';

class VidoCubit extends Cubit<VidoState> {
  final VideoRepo videoRepo;
  VidoCubit(this.videoRepo) : super(const VidoState.initial());

  final FilePicker picker = FilePicker.platform;
  VideoPlayerController? videoController;
  ChewieController? chewieController;
  bool isError = false;
  String? pickedVideoPath;
  final dio = Dio();
  final TextEditingController askController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Function to pick a video from the gallery
  Future<void> pickVideo() async {
    emit(const VidoState.pickVideoLoading());
    try {
      final FilePickerResult? videoResult =
          await picker.pickFiles(type: FileType.video);

      if (videoResult != null && videoResult.files.single.path != null) {
        pickedVideoPath = videoResult.files.single.path;
        isError = false;

        await _initializeVideoController();
      } else {
        isError = true;

        log('No video selected.');
      }
      emit(const VidoState.pickVideoSuccess());
    } catch (e) {
      log('Error picking video: $e');

      isError = true;

      emit(const VidoState.pickVideoError());
    }
  }

  // Initialize the video controller
  Future<void> _initializeVideoController() async {
    emit(const VidoState.intinlizeVideControllerLaoding());
    try {
      videoController = VideoPlayerController.file(File(pickedVideoPath!));
      await videoController!.initialize().then((va) {
        log('Video intialized goodddddddddd');
      });

      chewieController = ChewieController(
        videoPlayerController: videoController!,
        autoPlay: false,
        looping: false,
      );

      emit(const VidoState.intinlizeVideControllerSuccess());
    } catch (e) {
      log('Error initializing video controller: $e');

      isError = true;

      emit(const VidoState.intinlizeVideControllerError());
    }
  }

  ///****** Make function to send the video to the servver *** */
  Future<void> sendVideo() async {
    emit(const VidoState.askVideoApiLoading());

    try {
      FormData formData = FormData.fromMap({
        'video': await MultipartFile.fromFile(
          pickedVideoPath!,
          filename: pickedVideoPath!.split('/').last,
          contentType: MediaType('video', 'mp4'),
        ),
        'question': askController.text,
      });

      log('Sending video to server...');
      Response response = await dio.post(
        'https://ml-test.atwdemo.com/local_video',
        data: formData,
      );
      log('Sendinsdfsfsfsdfdsfsdfsfsdf...');

      if (response.statusCode == 200) {
        log('Upload successful: ${response.data}');
        emit(VidoState.askVideoSuccess(VideoReponse.fromJson(response.data)));
      } else {
        log('Upload failed with status: ${response.statusCode}');
        emit(VidoState.askVideoError());
      }
    } catch (e) {
      log('Error during upload: $e');
      emit(VidoState.askVideoError());
    }
  }
}
