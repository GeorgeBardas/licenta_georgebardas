part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isLoading,
    @Default(false) bool isFormValid,
    @Default(false) bool emailAlreadyUsed,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirmPassword,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
  }) = _RegisterState;
}
