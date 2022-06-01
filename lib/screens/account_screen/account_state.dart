part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    @Default(null) UserModel? user,
    String? userAvatar,
  }) = _AccountState;
}
