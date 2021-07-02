import 'package:coffee/app/auth/repositories/auth_repository.dart';
import 'package:coffee/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fireAuth;

class FireAuthRepository implements AuthRepository {
  final instance = fireAuth.FirebaseAuth.instance;

  @override
  Future<String?> getUserId() async {
    return await instance.currentUser?.uid;
  }

  @override
  Future<void> signInAnonymously() async {
    await instance.signInAnonymously();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signUpWithEmailAndPassword(
      {required String, required String password}) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
