part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isFormValid,
    @Default(false) bool wrongCredentials,
    @Default("") String email,
    @Default("") String password,
  }) = _LoginState;
}
