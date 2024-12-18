import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media_chat/core/netwoking/api_error_model.dart';
import 'package:media_chat/feature/video/data/models/video_reponse.dart';

part 'vido_state.freezed.dart';

@freezed
class VidoState with _$VidoState {
  const factory VidoState.initial() = Initial;

  const factory VidoState.videoLoading() = VidoLoading;

  const factory VidoState.videoSuccess(VideoReponse response) = VidoSuccess;

  const factory VidoState.videoError(ApiErrorModel apiErrorModel) = VidoError;

  ///*******************   Pick Video  **********************************************/
  const factory VidoState.pickVideoLoading() = PickVideoLoading;
  const factory VidoState.pickVideoSuccess() = PickVideoSuccess;
  const factory VidoState.pickVideoError() = PickVideoError;

  ///*******************   Initalize  Video  ****************************************/
  const factory VidoState.intinlizeVideControllerLaoding() =
      IntinlizeVideControllerLaoding;
  const factory VidoState.intinlizeVideControllerSuccess() =
      IntinlizeVideControllerSuccess;
  const factory VidoState.intinlizeVideControllerError() =
      IntinlizeVideControllerError;

  ///******************* Function that call the api for  Video  ********************************/
  const factory VidoState.askVideoApiLoading() = AskVideoApiLoading;
  const factory VidoState.askVideoSuccess(VideoReponse response) =
      AskVideoApiSuccess;
  const factory VidoState.askVideoError( ) =
      AskVideoApiError;
}
