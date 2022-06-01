import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
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
    getAvatarUrl();
  }

  void goToOrders() {
    appRouter.push(const OrdersScreenRoute());
  }

  void goToAccountDetails() {
    appRouter.push(const AccountDetailsScreenRoute());
  }

  void goToAdmin() {
    appRouter.push(const AdminScreenRoute());
  }

  void goToDeliveryAddresses() {
    appRouter.push(const DeliveryAddressesScreenRoute());
  }

  void uploadAvatar(XFile photo) async {
    emit(state.copyWith(isLoading: true));
    await FirebaseStorage.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .putFile(
          File(photo.path),
        );
    await getAvatarUrl();
    emit(state.copyWith(isLoading: false));
  }

  Future<void> getAvatarUrl() async {
    emit(
      state.copyWith(
        userAvatar: await FirebaseStorage.instance
            .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
            .getDownloadURL(),
      ),
    );
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
