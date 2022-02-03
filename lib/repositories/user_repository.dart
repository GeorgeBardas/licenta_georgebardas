import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:licenta_georgebardas/models/user_model.dart';
import 'package:licenta_georgebardas/utils/constants.dart';

class UserRepository {
  Future<void> createUser(UserModel user) async {
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .withConverter<UserModel>(
          fromFirestore: (snapshot, _) {
            return UserModel.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .doc(user.id)
        .set(user);
  }

  Future<UserModel?> getCurrentUser() async {
    final userDocSnapshot = await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .withConverter<UserModel>(
          fromFirestore: (snapshot, _) {
            return UserModel.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();
    return userDocSnapshot.data();
  }
}
