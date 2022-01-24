import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/repositories/auth_repository.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
    changeFormValidation();
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
    changeFormValidation();
  }

  void changeFormValidation() {
    emit(
      state.copyWith(
          isFormValid: InputValidation().validateEmail(state.email) &&
              state.email.isNotEmpty &&
              state.password.isNotEmpty),
    );
  }

  void login() async {
    emit(state.copyWith(isLoading: true));

    bool? loginResult =
        await AuthRepository().login(state.email, state.password);

    emit(state.copyWith(
        isLoading: false, wrongCredentials: loginResult == false));

    if (loginResult == true) {
      appRouter.pushAndPopUntil(
        const HomeScreenRoute(),
        predicate: (Route<dynamic> route) => false,
      );
    }
  }
}
