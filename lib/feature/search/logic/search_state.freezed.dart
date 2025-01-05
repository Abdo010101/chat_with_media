// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl
    with DiagnosticableTreeMixin
    implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.searchLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.searchLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResponse response});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SearchSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl
    with DiagnosticableTreeMixin
    implements SearchSuccess {
  const _$SearchSuccessImpl(this.response);

  @override
  final SearchResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.searchSuccess(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.searchSuccess'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess(final SearchResponse response) =
      _$SearchSuccessImpl;

  SearchResponse get response;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SearchErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl with DiagnosticableTreeMixin implements SearchError {
  const _$SearchErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.searchError(apiErrorModel: $apiErrorModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.searchError'))
      ..add(DiagnosticsProperty('apiErrorModel', apiErrorModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError(final ApiErrorModel apiErrorModel) =
      _$SearchErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLinkLoadingImplCopyWith<$Res> {
  factory _$$GetLinkLoadingImplCopyWith(_$GetLinkLoadingImpl value,
          $Res Function(_$GetLinkLoadingImpl) then) =
      __$$GetLinkLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLinkLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$GetLinkLoadingImpl>
    implements _$$GetLinkLoadingImplCopyWith<$Res> {
  __$$GetLinkLoadingImplCopyWithImpl(
      _$GetLinkLoadingImpl _value, $Res Function(_$GetLinkLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLinkLoadingImpl
    with DiagnosticableTreeMixin
    implements GetLinkLoading {
  const _$GetLinkLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.getLinksLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.getLinksLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLinkLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksLoading != null) {
      return getLinksLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksLoading != null) {
      return getLinksLoading(this);
    }
    return orElse();
  }
}

abstract class GetLinkLoading implements SearchState {
  const factory GetLinkLoading() = _$GetLinkLoadingImpl;
}

/// @nodoc
abstract class _$$GetLinksSuccessImplCopyWith<$Res> {
  factory _$$GetLinksSuccessImplCopyWith(_$GetLinksSuccessImpl value,
          $Res Function(_$GetLinksSuccessImpl) then) =
      __$$GetLinksSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetLinksResponse response});
}

/// @nodoc
class __$$GetLinksSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$GetLinksSuccessImpl>
    implements _$$GetLinksSuccessImplCopyWith<$Res> {
  __$$GetLinksSuccessImplCopyWithImpl(
      _$GetLinksSuccessImpl _value, $Res Function(_$GetLinksSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GetLinksSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GetLinksResponse,
    ));
  }
}

/// @nodoc

class _$GetLinksSuccessImpl
    with DiagnosticableTreeMixin
    implements GetLinksSuccess {
  const _$GetLinksSuccessImpl(this.response);

  @override
  final GetLinksResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.getLinksSuccess(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.getLinksSuccess'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLinksSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLinksSuccessImplCopyWith<_$GetLinksSuccessImpl> get copyWith =>
      __$$GetLinksSuccessImplCopyWithImpl<_$GetLinksSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksSuccess != null) {
      return getLinksSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksSuccess != null) {
      return getLinksSuccess(this);
    }
    return orElse();
  }
}

abstract class GetLinksSuccess implements SearchState {
  const factory GetLinksSuccess(final GetLinksResponse response) =
      _$GetLinksSuccessImpl;

  GetLinksResponse get response;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLinksSuccessImplCopyWith<_$GetLinksSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLinksErrorImplCopyWith<$Res> {
  factory _$$GetLinksErrorImplCopyWith(
          _$GetLinksErrorImpl value, $Res Function(_$GetLinksErrorImpl) then) =
      __$$GetLinksErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetLinksErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$GetLinksErrorImpl>
    implements _$$GetLinksErrorImplCopyWith<$Res> {
  __$$GetLinksErrorImplCopyWithImpl(
      _$GetLinksErrorImpl _value, $Res Function(_$GetLinksErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetLinksErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetLinksErrorImpl
    with DiagnosticableTreeMixin
    implements GetLinksError {
  const _$GetLinksErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.getLinksError(apiErrorModel: $apiErrorModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.getLinksError'))
      ..add(DiagnosticsProperty('apiErrorModel', apiErrorModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLinksErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLinksErrorImplCopyWith<_$GetLinksErrorImpl> get copyWith =>
      __$$GetLinksErrorImplCopyWithImpl<_$GetLinksErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksError != null) {
      return getLinksError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return getLinksError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (getLinksError != null) {
      return getLinksError(this);
    }
    return orElse();
  }
}

abstract class GetLinksError implements SearchState {
  const factory GetLinksError(final ApiErrorModel apiErrorModel) =
      _$GetLinksErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLinksErrorImplCopyWith<_$GetLinksErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWith<$Res> {
  factory _$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWith(
          _$ChangeTextFormFieldBasedOnVoiceLoadingImpl value,
          $Res Function(_$ChangeTextFormFieldBasedOnVoiceLoadingImpl) then) =
      __$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res,
        _$ChangeTextFormFieldBasedOnVoiceLoadingImpl>
    implements _$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWith<$Res> {
  __$$ChangeTextFormFieldBasedOnVoiceLoadingImplCopyWithImpl(
      _$ChangeTextFormFieldBasedOnVoiceLoadingImpl _value,
      $Res Function(_$ChangeTextFormFieldBasedOnVoiceLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeTextFormFieldBasedOnVoiceLoadingImpl
    with DiagnosticableTreeMixin
    implements ChangeTextFormFieldBasedOnVoiceLoading {
  const _$ChangeTextFormFieldBasedOnVoiceLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.changeTextFormFieldBasedOnVoiceLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SearchState.changeTextFormFieldBasedOnVoiceLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTextFormFieldBasedOnVoiceLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (changeTextFormFieldBasedOnVoiceLoading != null) {
      return changeTextFormFieldBasedOnVoiceLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (changeTextFormFieldBasedOnVoiceLoading != null) {
      return changeTextFormFieldBasedOnVoiceLoading(this);
    }
    return orElse();
  }
}

abstract class ChangeTextFormFieldBasedOnVoiceLoading implements SearchState {
  const factory ChangeTextFormFieldBasedOnVoiceLoading() =
      _$ChangeTextFormFieldBasedOnVoiceLoadingImpl;
}

/// @nodoc
abstract class _$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWith<$Res> {
  factory _$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWith(
          _$ChangeTextFormFieldBasedOnVoiceSuccessImpl value,
          $Res Function(_$ChangeTextFormFieldBasedOnVoiceSuccessImpl) then) =
      __$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res,
        _$ChangeTextFormFieldBasedOnVoiceSuccessImpl>
    implements _$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWith<$Res> {
  __$$ChangeTextFormFieldBasedOnVoiceSuccessImplCopyWithImpl(
      _$ChangeTextFormFieldBasedOnVoiceSuccessImpl _value,
      $Res Function(_$ChangeTextFormFieldBasedOnVoiceSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeTextFormFieldBasedOnVoiceSuccessImpl
    with DiagnosticableTreeMixin
    implements ChangeTextFormFieldBasedOnVoiceSuccess {
  const _$ChangeTextFormFieldBasedOnVoiceSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.changeTextFormFieldBasedOnVoiceSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SearchState.changeTextFormFieldBasedOnVoiceSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTextFormFieldBasedOnVoiceSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse response) searchSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) searchError,
    required TResult Function() getLinksLoading,
    required TResult Function(GetLinksResponse response) getLinksSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getLinksError,
    required TResult Function() changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function() changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse response)? searchSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? searchError,
    TResult? Function()? getLinksLoading,
    TResult? Function(GetLinksResponse response)? getLinksSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult? Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function()? changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse response)? searchSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? searchError,
    TResult Function()? getLinksLoading,
    TResult Function(GetLinksResponse response)? getLinksSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getLinksError,
    TResult Function()? changeTextFormFieldBasedOnVoiceLoading,
    TResult Function()? changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (changeTextFormFieldBasedOnVoiceSuccess != null) {
      return changeTextFormFieldBasedOnVoiceSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
    required TResult Function(GetLinkLoading value) getLinksLoading,
    required TResult Function(GetLinksSuccess value) getLinksSuccess,
    required TResult Function(GetLinksError value) getLinksError,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)
        changeTextFormFieldBasedOnVoiceLoading,
    required TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(GetLinkLoading value)? getLinksLoading,
    TResult? Function(GetLinksSuccess value)? getLinksSuccess,
    TResult? Function(GetLinksError value)? getLinksError,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult? Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
  }) {
    return changeTextFormFieldBasedOnVoiceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    TResult Function(GetLinkLoading value)? getLinksLoading,
    TResult Function(GetLinksSuccess value)? getLinksSuccess,
    TResult Function(GetLinksError value)? getLinksError,
    TResult Function(ChangeTextFormFieldBasedOnVoiceLoading value)?
        changeTextFormFieldBasedOnVoiceLoading,
    TResult Function(ChangeTextFormFieldBasedOnVoiceSuccess value)?
        changeTextFormFieldBasedOnVoiceSuccess,
    required TResult orElse(),
  }) {
    if (changeTextFormFieldBasedOnVoiceSuccess != null) {
      return changeTextFormFieldBasedOnVoiceSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeTextFormFieldBasedOnVoiceSuccess implements SearchState {
  const factory ChangeTextFormFieldBasedOnVoiceSuccess() =
      _$ChangeTextFormFieldBasedOnVoiceSuccessImpl;
}
