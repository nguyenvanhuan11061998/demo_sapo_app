// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchStateData call(List<ProductModel> product) {
    return SearchStateData(
      product,
    );
  }

  SearchStateLoading loading() {
    return const SearchStateLoading();
  }

  SearchStateNormal normal() {
    return const SearchStateNormal();
  }

  SearchStateError error(dynamic error) {
    return SearchStateError(
      error,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> product) $default, {
    required TResult Function() loading,
    required TResult Function() normal,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> product)? $default, {
    TResult Function()? loading,
    TResult Function()? normal,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateNormal value) normal,
    required TResult Function(SearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateNormal value)? normal,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class $SearchStateDataCopyWith<$Res> {
  factory $SearchStateDataCopyWith(
          SearchStateData value, $Res Function(SearchStateData) then) =
      _$SearchStateDataCopyWithImpl<$Res>;
  $Res call({List<ProductModel> product});
}

/// @nodoc
class _$SearchStateDataCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateDataCopyWith<$Res> {
  _$SearchStateDataCopyWithImpl(
      SearchStateData _value, $Res Function(SearchStateData) _then)
      : super(_value, (v) => _then(v as SearchStateData));

  @override
  SearchStateData get _value => super._value as SearchStateData;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(SearchStateData(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SearchStateData implements SearchStateData {
  const _$SearchStateData(this.product);

  @override
  final List<ProductModel> product;

  @override
  String toString() {
    return 'SearchState(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateData &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $SearchStateDataCopyWith<SearchStateData> get copyWith =>
      _$SearchStateDataCopyWithImpl<SearchStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> product) $default, {
    required TResult Function() loading,
    required TResult Function() normal,
    required TResult Function(dynamic error) error,
  }) {
    return $default(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> product)? $default, {
    TResult Function()? loading,
    TResult Function()? normal,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateNormal value) normal,
    required TResult Function(SearchStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateNormal value)? normal,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchStateData implements SearchState {
  const factory SearchStateData(List<ProductModel> product) = _$SearchStateData;

  List<ProductModel> get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateDataCopyWith<SearchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateLoadingCopyWith<$Res> {
  factory $SearchStateLoadingCopyWith(
          SearchStateLoading value, $Res Function(SearchStateLoading) then) =
      _$SearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateLoadingCopyWith<$Res> {
  _$SearchStateLoadingCopyWithImpl(
      SearchStateLoading _value, $Res Function(SearchStateLoading) _then)
      : super(_value, (v) => _then(v as SearchStateLoading));

  @override
  SearchStateLoading get _value => super._value as SearchStateLoading;
}

/// @nodoc

class _$SearchStateLoading implements SearchStateLoading {
  const _$SearchStateLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> product) $default, {
    required TResult Function() loading,
    required TResult Function() normal,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> product)? $default, {
    TResult Function()? loading,
    TResult Function()? normal,
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
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateNormal value) normal,
    required TResult Function(SearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateNormal value)? normal,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchStateLoading implements SearchState {
  const factory SearchStateLoading() = _$SearchStateLoading;
}

/// @nodoc
abstract class $SearchStateNormalCopyWith<$Res> {
  factory $SearchStateNormalCopyWith(
          SearchStateNormal value, $Res Function(SearchStateNormal) then) =
      _$SearchStateNormalCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateNormalCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateNormalCopyWith<$Res> {
  _$SearchStateNormalCopyWithImpl(
      SearchStateNormal _value, $Res Function(SearchStateNormal) _then)
      : super(_value, (v) => _then(v as SearchStateNormal));

  @override
  SearchStateNormal get _value => super._value as SearchStateNormal;
}

/// @nodoc

class _$SearchStateNormal implements SearchStateNormal {
  const _$SearchStateNormal();

  @override
  String toString() {
    return 'SearchState.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchStateNormal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> product) $default, {
    required TResult Function() loading,
    required TResult Function() normal,
    required TResult Function(dynamic error) error,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> product)? $default, {
    TResult Function()? loading,
    TResult Function()? normal,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateNormal value) normal,
    required TResult Function(SearchStateError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateNormal value)? normal,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class SearchStateNormal implements SearchState {
  const factory SearchStateNormal() = _$SearchStateNormal;
}

/// @nodoc
abstract class $SearchStateErrorCopyWith<$Res> {
  factory $SearchStateErrorCopyWith(
          SearchStateError value, $Res Function(SearchStateError) then) =
      _$SearchStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SearchStateErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateErrorCopyWith<$Res> {
  _$SearchStateErrorCopyWithImpl(
      SearchStateError _value, $Res Function(SearchStateError) _then)
      : super(_value, (v) => _then(v as SearchStateError));

  @override
  SearchStateError get _value => super._value as SearchStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SearchStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchStateError implements SearchStateError {
  const _$SearchStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SearchStateErrorCopyWith<SearchStateError> get copyWith =>
      _$SearchStateErrorCopyWithImpl<SearchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> product) $default, {
    required TResult Function() loading,
    required TResult Function() normal,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> product)? $default, {
    TResult Function()? loading,
    TResult Function()? normal,
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
    TResult Function(SearchStateData value) $default, {
    required TResult Function(SearchStateLoading value) loading,
    required TResult Function(SearchStateNormal value) normal,
    required TResult Function(SearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateData value)? $default, {
    TResult Function(SearchStateLoading value)? loading,
    TResult Function(SearchStateNormal value)? normal,
    TResult Function(SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchStateError implements SearchState {
  const factory SearchStateError(dynamic error) = _$SearchStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateErrorCopyWith<SearchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
