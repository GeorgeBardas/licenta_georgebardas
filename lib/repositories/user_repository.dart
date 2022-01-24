import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licenta_georgebardas/models/user.dart';
import 'package:licenta_georgebardas/utils/constants.dart';

class UserRepository {
  Future<void> createUser(User user) async {
    await FirebaseFirestore.instance
        .collection(DATABASE_USERS_KEY)
        .withConverter<User>(
          fromFirestore: (snapshot, _) {
            return User.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .add(user);
  }
}
