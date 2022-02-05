import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/user_model.dart';
import 'package:licenta_georgebardas/repositories/user_repository.dart';
import 'package:licenta_georgebardas/router.gr.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState()) {
    getUser();
  }

  void getUser() async {
    emit(state.copyWith(isLoading: true));

    final user = await UserRepository().getCurrentUser();

    emit(
      state.copyWith(
        isLoading: false,
        user: user,
      ),
    );
  }

  void goToAdmin() {
    appRouter.push(const AdminScreenRoute());
  }

  void logout() async {
    emit(state.copyWith(isLoading: true));
    await FirebaseAuth.instance.signOut();
    emit(state.copyWith(isLoading: false));

    appRouter.pushAndPopUntil(
      const WelcomeScreenRoute(),
      predicate: (Route<dynamic> route) => false,
    );
  }
}
