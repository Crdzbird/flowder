// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'downloader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloaderStateTearOff {
  const _$DownloaderStateTearOff();

  _DownloaderState call(
      {required bool isComplete,
      required bool isLoading,
      required bool isPaused}) {
    return _DownloaderState(
      isComplete: isComplete,
      isLoading: isLoading,
      isPaused: isPaused,
    );
  }
}

/// @nodoc
const $DownloaderState = _$DownloaderStateTearOff();

/// @nodoc
mixin _$DownloaderState {
  bool get isComplete => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloaderStateCopyWith<DownloaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloaderStateCopyWith<$Res> {
  factory $DownloaderStateCopyWith(
          DownloaderState value, $Res Function(DownloaderState) then) =
      _$DownloaderStateCopyWithImpl<$Res>;
  $Res call({bool isComplete, bool isLoading, bool isPaused});
}

/// @nodoc
class _$DownloaderStateCopyWithImpl<$Res>
    implements $DownloaderStateCopyWith<$Res> {
  _$DownloaderStateCopyWithImpl(this._value, this._then);

  final DownloaderState _value;
  // ignore: unused_field
  final $Res Function(DownloaderState) _then;

  @override
  $Res call({
    Object? isComplete = freezed,
    Object? isLoading = freezed,
    Object? isPaused = freezed,
  }) {
    return _then(_value.copyWith(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: isPaused == freezed
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DownloaderStateCopyWith<$Res>
    implements $DownloaderStateCopyWith<$Res> {
  factory _$DownloaderStateCopyWith(
          _DownloaderState value, $Res Function(_DownloaderState) then) =
      __$DownloaderStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isComplete, bool isLoading, bool isPaused});
}

/// @nodoc
class __$DownloaderStateCopyWithImpl<$Res>
    extends _$DownloaderStateCopyWithImpl<$Res>
    implements _$DownloaderStateCopyWith<$Res> {
  __$DownloaderStateCopyWithImpl(
      _DownloaderState _value, $Res Function(_DownloaderState) _then)
      : super(_value, (v) => _then(v as _DownloaderState));

  @override
  _DownloaderState get _value => super._value as _DownloaderState;

  @override
  $Res call({
    Object? isComplete = freezed,
    Object? isLoading = freezed,
    Object? isPaused = freezed,
  }) {
    return _then(_DownloaderState(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: isPaused == freezed
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DownloaderState implements _DownloaderState {
  const _$_DownloaderState(
      {required this.isComplete,
      required this.isLoading,
      required this.isPaused});

  @override
  final bool isComplete;
  @override
  final bool isLoading;
  @override
  final bool isPaused;

  @override
  String toString() {
    return 'DownloaderState(isComplete: $isComplete, isLoading: $isLoading, isPaused: $isPaused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloaderState &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isPaused, isPaused) ||
                const DeepCollectionEquality()
                    .equals(other.isPaused, isPaused)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isComplete) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPaused);

  @JsonKey(ignore: true)
  @override
  _$DownloaderStateCopyWith<_DownloaderState> get copyWith =>
      __$DownloaderStateCopyWithImpl<_DownloaderState>(this, _$identity);
}

abstract class _DownloaderState implements DownloaderState {
  const factory _DownloaderState(
      {required bool isComplete,
      required bool isLoading,
      required bool isPaused}) = _$_DownloaderState;

  @override
  bool get isComplete => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isPaused => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloaderStateCopyWith<_DownloaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
