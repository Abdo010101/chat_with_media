import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:media_chat/core/netwoking/api_error_handler.dart';
import 'package:media_chat/core/netwoking/api_result.dart';

import 'package:media_chat/feature/video/data/models/video_reponse.dart';
import 'package:media_chat/feature/video/data/models/video_request_body.dart';

class VideoRepo {
  final dio = Dio();

  Future<ApiResult<VideoReponse>> uploadVideo(FormData formData) async {
    try {
      Response response = await dio.post(
        'https://ml-test.atwdemo.com/local_video', // Replace with your API endpoint
        data: {
          'video' :formData,
          
        },
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );
      log('Gekii');
      return ApiResult.success(response.data);
    } catch (e) {
      log('ERRRRRRRR');
      return ApiResult.failure(ApiErrorHanlder.handle(e));
    }
  }
}
