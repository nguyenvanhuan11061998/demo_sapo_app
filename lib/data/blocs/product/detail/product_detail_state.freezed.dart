// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductDetailStateTearOff {
  const _$ProductDetailStateTearOff();

  ProductDetailStateData call(ProductModel productModel2) {
    return ProductDetailStateData(
      productModel2,
    );
  }

  ProductDetailStateLoading loading() {
    return const ProductDetailStateLoading();
  }

  ProductDetailStateError error(dynamic error) {
    return ProductDetailStateError(
      error,
    );
  }
}

/// @nodoc
const $ProductDetailState = _$ProductDetailStateTearOff();

/// @nodoc
mixin _$ProductDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProductModel productModel2) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProductDetailStateData value) $default, {
    required TResult Function(ProductDetailStateLoading value) loading,
    required TResult Function(ProductDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  final ProductDetailState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailState) _then;
}

/// @nodoc
abstract class $ProductDetailStateDataCopyWith<$Res> {
  factory $ProductDetailStateDataCopyWith(ProductDetailStateData value,
          $Res Function(ProductDetailStateData) then) =
      _$ProductDetailStateDataCopyWithImpl<$Res>;
  $Res call({ProductModel productModel2});
}

/// @nodoc
class _$ProductDetailStateDataCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateDataCopyWith<$Res> {
  _$ProductDetailStateDataCopyWithImpl(ProductDetailStateData _value,
      $Res Function(ProductDetailStateData) _then)
      : super(_value, (v) => _then(v as ProductDetailStateData));

  @override
  ProductDetailStateData get _value => super._value as ProductDetailStateData;

  @override
  $Res call({
    Object? productModel2 = freezed,
  }) {
    return _then(ProductDetailStateData(
      productModel2 == freezed
          ? _value.productModel2
          : productModel2 // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateData implements ProductDetailStateData {
  const _$ProductDetailStateData(this.productModel2);

  @override
  final ProductModel productModel2;

  @override
  String toString() {
    return 'ProductDetailState(productModel2: $productModel2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDetailStateData &&
            (identical(other.productModel2, productModel2) ||
                const DeepCollectionEquality()
                    .equals(other.productModel2, productModel2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel2);

  @JsonKey(ignore: true)
  @override
  $ProductDetailStateDataCopyWith<ProductDetailStateData> get copyWith =>
      _$ProductDetailStateDataCopyWithImpl<ProductDetailStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProductModel productModel2) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(productModel2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(productModel2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(productModel2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ProductDetailStateData value) $default, {
    required TResult Function(ProductDetailStateLoading value) loading,
    required TResult Function(ProductDetailStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ProductDetailStateData implements ProductDetailState {
  const factory ProductDetailStateData(ProductModel productModel2) =
      _$ProductDetailStateData;

  ProductModel get productModel2 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailStateDataCopyWith<ProductDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateLoadingCopyWith<$Res> {
  factory $ProductDetailStateLoadingCopyWith(ProductDetailStateLoading value,
          $Res Function(ProductDetailStateLoading) then) =
      _$ProductDetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailStateLoadingCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateLoadingCopyWith<$Res> {
  _$ProductDetailStateLoadingCopyWithImpl(ProductDetailStateLoading _value,
      $Res Function(ProductDetailStateLoading) _then)
      : super(_value, (v) => _then(v as ProductDetailStateLoading));

  @override
  ProductDetailStateLoading get _value =>
      super._value as ProductDetailStateLoading;
}

/// @nodoc

class _$ProductDetailStateLoading implements ProductDetailStateLoading {
  const _$ProductDetailStateLoading();

  @override
  String toString() {
    return 'ProductDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProductModel productModel2) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
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
    TResult Function(ProductDetailStateData value) $default, {
    required TResult Function(ProductDetailStateLoading value) loading,
    required TResult Function(ProductDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailStateLoading implements ProductDetailState {
  const factory ProductDetailStateLoading() = _$ProductDetailStateLoading;
}

/// @nodoc
abstract class $ProductDetailStateErrorCopyWith<$Res> {
  factory $ProductDetailStateErrorCopyWith(ProductDetailStateError value,
          $Res Function(ProductDetailStateError) then) =
      _$ProductDetailStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$ProductDetailStateErrorCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateErrorCopyWith<$Res> {
  _$ProductDetailStateErrorCopyWithImpl(ProductDetailStateError _value,
      $Res Function(ProductDetailStateError) _then)
      : super(_value, (v) => _then(v as ProductDetailStateError));

  @override
  ProductDetailStateError get _value => super._value as ProductDetailStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ProductDetailStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateError implements ProductDetailStateError {
  const _$ProductDetailStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ProductDetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDetailStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ProductDetailStateErrorCopyWith<ProductDetailStateError> get copyWith =>
      _$ProductDetailStateErrorCopyWithImpl<ProductDetailStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProductModel productModel2) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProductModel productModel2)? $default, {
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
    TResult Function(ProductDetailStateData value) $default, {
    required TResult Function(ProductDetailStateLoading value) loading,
    required TResult Function(ProductDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ProductDetailStateData value)? $default, {
    TResult Function(ProductDetailStateLoading value)? loading,
    TResult Function(ProductDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductDetailStateError implements ProductDetailState {
  const factory ProductDetailStateError(dynamic error) =
      _$ProductDetailStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailStateErrorCopyWith<ProductDetailStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
