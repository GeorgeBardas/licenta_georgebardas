import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/repositories/auth_repository.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState());

  void onFirstNameChanged(String firstName) {
    emit(state.copyWith(firstName: firstName));
    changeFormValidation();
  }

  void onLastNameChanged(String lastName) {
    emit(state.copyWith(lastName: lastName));
    changeFormValidation();
  }

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
    changeFormValidation();
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
    changeFormValidation();
  }

  void onConfirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
    changeFormValidation();
  }

  void changeFormValidation() {
    emit(
      state.copyWith(
        isFormValid: InputValidation().validateEmail(state.email) &&
            state.firstName.isNotEmpty &&
            state.lastName.isNotEmpty &&
            InputValidation().validateName(state.firstName) &&
            InputValidation().validateName(state.lastName) &&
            state.email.isNotEmpty &&
            state.password.isNotEmpty &&
            state.confirmPassword.isNotEmpty &&
            InputValidation().validatePassword(state.password) &&
            InputValidation().validateConfirmPassword(
                state.password, state.confirmPassword) &&
            state.password == state.confirmPassword,
      ),
    );
  }

  void register() async {
    emit(state.copyWith(isLoading: true));

    final bool result = await AuthRepository().register(
      state.firstName,
      state.lastName,
      state.email,
      state.password,
    );

    emit(state.copyWith(isLoading: false, emailAlreadyUsed: result == false));

    if (result) print("success");
  }
}
