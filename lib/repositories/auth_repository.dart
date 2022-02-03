import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:licenta_georgebardas/models/user_model.dart';
import 'package:licenta_georgebardas/repositories/user_repository.dart';

class AuthRepository {
  Future<bool?> login(String email, String password) async {
    UserCredential? result;

    try {
      result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      if (error is FirebaseAuthException) {
        switch (error.code) {
          case "account-exists-with-different-credential":
          case "invalid-email":
          case "user-not-found":
            return false;
          default:
            return null;
        }
      }
    }

    return result != null;
  }

  Future<bool> register(
      String firstName, String lastName, String email, String password) async {
    UserCredential? result;

    try {
      result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      UserRepository().createUser(
        UserModel(
          id: result.user!.uid,
          firstName: firstName,
          lastName: lastName,
          email: email,
        ),
      );
    } catch (error) {
      if (error is FirebaseAuthException) {
        switch (error.code) {
          case "auth/email-already-in-use":
            return false;
        }
      }
    }

    return result != null;
  }
}
