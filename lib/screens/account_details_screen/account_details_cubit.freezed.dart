// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountDetailsStateTearOff {
  const _$AccountDetailsStateTearOff();

  _AccountDetailsState call(
      {bool isLoading = false, UserModel? user = null, String? userAvatar}) {
    return _AccountDetailsState(
      isLoading: isLoading,
      user: user,
      userAvatar: userAvatar,
    );
  }
}

/// @nodoc
const $AccountDetailsState = _$AccountDetailsStateTearOff();

/// @nodoc
mixin _$AccountDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get userAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDetailsStateCopyWith<AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsStateCopyWith<$Res> {
  factory $AccountDetailsStateCopyWith(
          AccountDetailsState value, $Res Function(AccountDetailsState) then) =
      _$AccountDetailsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, UserModel? user, String? userAvatar});
}

/// @nodoc
class _$AccountDetailsStateCopyWithImpl<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  _$AccountDetailsStateCopyWithImpl(this._value, this._then);

  final AccountDetailsState _value;
  // ignore: unused_field
  final $Res Function(AccountDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountDetailsStateCopyWith<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  factory _$AccountDetailsStateCopyWith(_AccountDetailsState value,
          $Res Function(_AccountDetailsState) then) =
      __$AccountDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, UserModel? user, String? userAvatar});
}

/// @nodoc
class __$AccountDetailsStateCopyWithImpl<$Res>
    extends _$AccountDetailsStateCopyWithImpl<$Res>
    implements _$AccountDetailsStateCopyWith<$Res> {
  __$AccountDetailsStateCopyWithImpl(
      _AccountDetailsState _value, $Res Function(_AccountDetailsState) _then)
      : super(_value, (v) => _then(v as _AccountDetailsState));

  @override
  _AccountDetailsState get _value => super._value as _AccountDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? userAvatar = freezed,
  }) {
    return _then(_AccountDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userAvatar: userAvatar == freezed
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AccountDetailsState implements _AccountDetailsState {
  const _$_AccountDetailsState(
      {this.isLoading = false, this.user = null, this.userAvatar});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final UserModel? user;
  @override
  final String? userAvatar;

  @override
  String toString() {
    return 'AccountDetailsState(isLoading: $isLoading, user: $user, userAvatar: $userAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.userAvatar, userAvatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(userAvatar));

  @JsonKey(ignore: true)
  @override
  _$AccountDetailsStateCopyWith<_AccountDetailsState> get copyWith =>
      __$AccountDetailsStateCopyWithImpl<_AccountDetailsState>(
          this, _$identity);
}

abstract class _AccountDetailsState implements AccountDetailsState {
  const factory _AccountDetailsState(
      {bool isLoading,
      UserModel? user,
      String? userAvatar}) = _$_AccountDetailsState;

  @override
  bool get isLoading;
  @override
  UserModel? get user;
  @override
  String? get userAvatar;
  @override
  @JsonKey(ignore: true)
  _$AccountDetailsStateCopyWith<_AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
