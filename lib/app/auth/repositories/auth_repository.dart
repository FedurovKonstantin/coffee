abstract class AuthRepository {
  Future<void> signOut();

  Future<void> signInAnonymously();

  Future<void> signUpWithEmailAndPassword({
    required String,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<String> getUserId();
}
