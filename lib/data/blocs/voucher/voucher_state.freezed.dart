// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'voucher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VoucherStateTearOff {
  const _$VoucherStateTearOff();

  VoucherStateData call(List<VoucherModel> listData) {
    return VoucherStateData(
      listData,
    );
  }

  VoucherStateLoading loading() {
    return const VoucherStateLoading();
  }

  VoucherStateError error(dynamic error) {
    return VoucherStateError(
      error,
    );
  }
}

/// @nodoc
const $VoucherState = _$VoucherStateTearOff();

/// @nodoc
mixin _$VoucherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(VoucherStateData value) $default, {
    required TResult Function(VoucherStateLoading value) loading,
    required TResult Function(VoucherStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(VoucherStateData value)? $default, {
    TResult Function(VoucherStateLoading value)? loading,
    TResult Function(VoucherStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherStateCopyWith<$Res> {
  factory $VoucherStateCopyWith(
          VoucherState value, $Res Function(VoucherState) then) =
      _$VoucherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoucherStateCopyWithImpl<$Res> implements $VoucherStateCopyWith<$Res> {
  _$VoucherStateCopyWithImpl(this._value, this._then);

  final VoucherState _value;
  // ignore: unused_field
  final $Res Function(VoucherState) _then;
}

/// @nodoc
abstract class $VoucherStateDataCopyWith<$Res> {
  factory $VoucherStateDataCopyWith(
          VoucherStateData value, $Res Function(VoucherStateData) then) =
      _$VoucherStateDataCopyWithImpl<$Res>;
  $Res call({List<VoucherModel> listData});
}

/// @nodoc
class _$VoucherStateDataCopyWithImpl<$Res>
    extends _$VoucherStateCopyWithImpl<$Res>
    implements $VoucherStateDataCopyWith<$Res> {
  _$VoucherStateDataCopyWithImpl(
      VoucherStateData _value, $Res Function(VoucherStateData) _then)
      : super(_value, (v) => _then(v as VoucherStateData));

  @override
  VoucherStateData get _value => super._value as VoucherStateData;

  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(VoucherStateData(
      listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>,
    ));
  }
}

/// @nodoc

class _$VoucherStateData implements VoucherStateData {
  const _$VoucherStateData(this.listData);

  @override
  final List<VoucherModel> listData;

  @override
  String toString() {
    return 'VoucherState(listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VoucherStateData &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listData);

  @JsonKey(ignore: true)
  @override
  $VoucherStateDataCopyWith<VoucherStateData> get copyWith =>
      _$VoucherStateDataCopyWithImpl<VoucherStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(listData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(listData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(VoucherStateData value) $default, {
    required TResult Function(VoucherStateLoading value) loading,
    required TResult Function(VoucherStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(VoucherStateData value)? $default, {
    TResult Function(VoucherStateLoading value)? loading,
    TResult Function(VoucherStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class VoucherStateData implements VoucherState {
  const factory VoucherStateData(List<VoucherModel> listData) =
      _$VoucherStateData;

  List<VoucherModel> get listData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherStateDataCopyWith<VoucherStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherStateLoadingCopyWith<$Res> {
  factory $VoucherStateLoadingCopyWith(
          VoucherStateLoading value, $Res Function(VoucherStateLoading) then) =
      _$VoucherStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoucherStateLoadingCopyWithImpl<$Res>
    extends _$VoucherStateCopyWithImpl<$Res>
    implements $VoucherStateLoadingCopyWith<$Res> {
  _$VoucherStateLoadingCopyWithImpl(
      VoucherStateLoading _value, $Res Function(VoucherStateLoading) _then)
      : super(_value, (v) => _then(v as VoucherStateLoading));

  @override
  VoucherStateLoading get _value => super._value as VoucherStateLoading;
}

/// @nodoc

class _$VoucherStateLoading implements VoucherStateLoading {
  const _$VoucherStateLoading();

  @override
  String toString() {
    return 'VoucherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VoucherStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(VoucherStateData value) $default, {
    required TResult Function(VoucherStateLoading value) loading,
    required TResult Function(VoucherStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(VoucherStateData value)? $default, {
    TResult Function(VoucherStateLoading value)? loading,
    TResult Function(VoucherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VoucherStateLoading implements VoucherState {
  const factory VoucherStateLoading() = _$VoucherStateLoading;
}

/// @nodoc
abstract class $VoucherStateErrorCopyWith<$Res> {
  factory $VoucherStateErrorCopyWith(
          VoucherStateError value, $Res Function(VoucherStateError) then) =
      _$VoucherStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$VoucherStateErrorCopyWithImpl<$Res>
    extends _$VoucherStateCopyWithImpl<$Res>
    implements $VoucherStateErrorCopyWith<$Res> {
  _$VoucherStateErrorCopyWithImpl(
      VoucherStateError _value, $Res Function(VoucherStateError) _then)
      : super(_value, (v) => _then(v as VoucherStateError));

  @override
  VoucherStateError get _value => super._value as VoucherStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(VoucherStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$VoucherStateError implements VoucherStateError {
  const _$VoucherStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'VoucherState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VoucherStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $VoucherStateErrorCopyWith<VoucherStateError> get copyWith =>
      _$VoucherStateErrorCopyWithImpl<VoucherStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VoucherModel> listData)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(VoucherStateData value) $default, {
    required TResult Function(VoucherStateLoading value) loading,
    required TResult Function(VoucherStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(VoucherStateData value)? $default, {
    TResult Function(VoucherStateLoading value)? loading,
    TResult Function(VoucherStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VoucherStateError implements VoucherState {
  const factory VoucherStateError(dynamic error) = _$VoucherStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherStateErrorCopyWith<VoucherStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
