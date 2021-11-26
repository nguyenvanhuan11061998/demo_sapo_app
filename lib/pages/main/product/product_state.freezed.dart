// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  ProductStateData call(List<ProductModel> data) {
    return ProductStateData(
      data,
    );
  }

  ProductStateLoading loading() {
    return const ProductStateLoading();
  }

  ProductStateError error(dynamic error) {
    return ProductStateError(
      error,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProductStateData value) $default, {
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductStateData value)? $default, {
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class $ProductStateDataCopyWith<$Res> {
  factory $ProductStateDataCopyWith(
          ProductStateData value, $Res Function(ProductStateData) then) =
      _$ProductStateDataCopyWithImpl<$Res>;
  $Res call({List<ProductModel> data});
}

/// @nodoc
class _$ProductStateDataCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateDataCopyWith<$Res> {
  _$ProductStateDataCopyWithImpl(
      ProductStateData _value, $Res Function(ProductStateData) _then)
      : super(_value, (v) => _then(v as ProductStateData));

  @override
  ProductStateData get _value => super._value as ProductStateData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ProductStateData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductStateData implements ProductStateData {
  const _$ProductStateData(this.data);

  @override
  final List<ProductModel> data;

  @override
  String toString() {
    return 'ProductState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductStateData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ProductStateDataCopyWith<ProductStateData> get copyWith =>
      _$ProductStateDataCopyWithImpl<ProductStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProductStateData value) $default, {
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductStateData value)? $default, {
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ProductStateData implements ProductState {
  const factory ProductStateData(List<ProductModel> data) = _$ProductStateData;

  List<ProductModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductStateDataCopyWith<ProductStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateLoadingCopyWith<$Res> {
  factory $ProductStateLoadingCopyWith(
          ProductStateLoading value, $Res Function(ProductStateLoading) then) =
      _$ProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateLoadingCopyWith<$Res> {
  _$ProductStateLoadingCopyWithImpl(
      ProductStateLoading _value, $Res Function(ProductStateLoading) _then)
      : super(_value, (v) => _then(v as ProductStateLoading));

  @override
  ProductStateLoading get _value => super._value as ProductStateLoading;
}

/// @nodoc

class _$ProductStateLoading implements ProductStateLoading {
  const _$ProductStateLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> data)? $default, {
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
    TResult Function(ProductStateData value) $default, {
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductStateData value)? $default, {
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductStateLoading implements ProductState {
  const factory ProductStateLoading() = _$ProductStateLoading;
}

/// @nodoc
abstract class $ProductStateErrorCopyWith<$Res> {
  factory $ProductStateErrorCopyWith(
          ProductStateError value, $Res Function(ProductStateError) then) =
      _$ProductStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$ProductStateErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateErrorCopyWith<$Res> {
  _$ProductStateErrorCopyWithImpl(
      ProductStateError _value, $Res Function(ProductStateError) _then)
      : super(_value, (v) => _then(v as ProductStateError));

  @override
  ProductStateError get _value => super._value as ProductStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ProductStateError(
      error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ProductStateError implements ProductStateError {
  const _$ProductStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ProductState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ProductStateErrorCopyWith<ProductStateError> get copyWith =>
      _$ProductStateErrorCopyWithImpl<ProductStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> data)? $default, {
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
    TResult Function(ProductStateData value) $default, {
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductStateData value)? $default, {
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductStateError implements ProductState {
  const factory ProductStateError(dynamic error) = _$ProductStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductStateErrorCopyWith<ProductStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
