// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'internet_connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetConnectionStateTearOff {
  const _$InternetConnectionStateTearOff();

  _InternetConnectionState call(
      {required bool hasInternet, required bool isLoading}) {
    return _InternetConnectionState(
      hasInternet: hasInternet,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $InternetConnectionState = _$InternetConnectionStateTearOff();

/// @nodoc
mixin _$InternetConnectionState {
  bool get hasInternet => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetConnectionStateCopyWith<InternetConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionStateCopyWith<$Res> {
  factory $InternetConnectionStateCopyWith(InternetConnectionState value,
          $Res Function(InternetConnectionState) then) =
      _$InternetConnectionStateCopyWithImpl<$Res>;
  $Res call({bool hasInternet, bool isLoading});
}

/// @nodoc
class _$InternetConnectionStateCopyWithImpl<$Res>
    implements $InternetConnectionStateCopyWith<$Res> {
  _$InternetConnectionStateCopyWithImpl(this._value, this._then);

  final InternetConnectionState _value;
  // ignore: unused_field
  final $Res Function(InternetConnectionState) _then;

  @override
  $Res call({
    Object? hasInternet = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InternetConnectionStateCopyWith<$Res>
    implements $InternetConnectionStateCopyWith<$Res> {
  factory _$InternetConnectionStateCopyWith(_InternetConnectionState value,
          $Res Function(_InternetConnectionState) then) =
      __$InternetConnectionStateCopyWithImpl<$Res>;
  @override
  $Res call({bool hasInternet, bool isLoading});
}

/// @nodoc
class __$InternetConnectionStateCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res>
    implements _$InternetConnectionStateCopyWith<$Res> {
  __$InternetConnectionStateCopyWithImpl(_InternetConnectionState _value,
      $Res Function(_InternetConnectionState) _then)
      : super(_value, (v) => _then(v as _InternetConnectionState));

  @override
  _InternetConnectionState get _value =>
      super._value as _InternetConnectionState;

  @override
  $Res call({
    Object? hasInternet = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_InternetConnectionState(
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetConnectionState implements _InternetConnectionState {
  const _$_InternetConnectionState(
      {required this.hasInternet, required this.isLoading});

  @override
  final bool hasInternet;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'InternetConnectionState(hasInternet: $hasInternet, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InternetConnectionState &&
            (identical(other.hasInternet, hasInternet) ||
                const DeepCollectionEquality()
                    .equals(other.hasInternet, hasInternet)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasInternet) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$InternetConnectionStateCopyWith<_InternetConnectionState> get copyWith =>
      __$InternetConnectionStateCopyWithImpl<_InternetConnectionState>(
          this, _$identity);
}

abstract class _InternetConnectionState implements InternetConnectionState {
  const factory _InternetConnectionState(
      {required bool hasInternet,
      required bool isLoading}) = _$_InternetConnectionState;

  @override
  bool get hasInternet => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InternetConnectionStateCopyWith<_InternetConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
