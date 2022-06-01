// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wrap_product_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WrapProductItemStateTearOff {
  const _$WrapProductItemStateTearOff();

  _WrapProductItemState call({String? imageUrl}) {
    return _WrapProductItemState(
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $WrapProductItemState = _$WrapProductItemStateTearOff();

/// @nodoc
mixin _$WrapProductItemState {
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WrapProductItemStateCopyWith<WrapProductItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WrapProductItemStateCopyWith<$Res> {
  factory $WrapProductItemStateCopyWith(WrapProductItemState value,
          $Res Function(WrapProductItemState) then) =
      _$WrapProductItemStateCopyWithImpl<$Res>;
  $Res call({String? imageUrl});
}

/// @nodoc
class _$WrapProductItemStateCopyWithImpl<$Res>
    implements $WrapProductItemStateCopyWith<$Res> {
  _$WrapProductItemStateCopyWithImpl(this._value, this._then);

  final WrapProductItemState _value;
  // ignore: unused_field
  final $Res Function(WrapProductItemState) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WrapProductItemStateCopyWith<$Res>
    implements $WrapProductItemStateCopyWith<$Res> {
  factory _$WrapProductItemStateCopyWith(_WrapProductItemState value,
          $Res Function(_WrapProductItemState) then) =
      __$WrapProductItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String? imageUrl});
}

/// @nodoc
class __$WrapProductItemStateCopyWithImpl<$Res>
    extends _$WrapProductItemStateCopyWithImpl<$Res>
    implements _$WrapProductItemStateCopyWith<$Res> {
  __$WrapProductItemStateCopyWithImpl(
      _WrapProductItemState _value, $Res Function(_WrapProductItemState) _then)
      : super(_value, (v) => _then(v as _WrapProductItemState));

  @override
  _WrapProductItemState get _value => super._value as _WrapProductItemState;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_WrapProductItemState(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WrapProductItemState implements _WrapProductItemState {
  const _$_WrapProductItemState({this.imageUrl});

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'WrapProductItemState(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WrapProductItemState &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$WrapProductItemStateCopyWith<_WrapProductItemState> get copyWith =>
      __$WrapProductItemStateCopyWithImpl<_WrapProductItemState>(
          this, _$identity);
}

abstract class _WrapProductItemState implements WrapProductItemState {
  const factory _WrapProductItemState({String? imageUrl}) =
      _$_WrapProductItemState;

  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$WrapProductItemStateCopyWith<_WrapProductItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
