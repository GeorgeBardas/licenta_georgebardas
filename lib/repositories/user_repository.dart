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

  Future<void> saveUserDeliveryAddress(String newAddress) async {
    List<dynamic> savedAddresses = await getDeliveryAddresses();
    savedAddresses.add(newAddress);
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({DATABASE_ADDRESSES_KEY: savedAddresses});
  }

  Future<List<String>> getDeliveryAddresses() async {
    dynamic list = (await FirebaseFirestore.instance
            .collection(DATABASE_USERS_KEY)
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get())
        .get(DATABASE_ADDRESSES_KEY);
    return List<String>.from(list.map((e) => e.toString())).toList();
  }

  Future<void> deleteDeliveryAddress(String address) async {
    List<dynamic> savedAddresses = await getDeliveryAddresses();
    savedAddresses.remove(address);
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({DATABASE_ADDRESSES_KEY: savedAddresses});
  }
}
