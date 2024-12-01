import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media_chat/core/netwoking/api_error_model.dart';
part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = Success<T>;
  factory ApiResult.failure(ApiErrorModel apiErrorModel) = Failure<T>;
}
