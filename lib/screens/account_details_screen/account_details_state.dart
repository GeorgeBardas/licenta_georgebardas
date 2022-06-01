part of 'account_details_cubit.dart';

@freezed
class AccountDetailsState with _$AccountDetailsState {
  const factory AccountDetailsState({
    @Default(false) bool isLoading,
    @Default(null) UserModel? user,
    String? userAvatar,
  }) = _AccountDetailsState;
}
