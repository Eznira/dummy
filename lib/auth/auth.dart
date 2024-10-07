import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static final _firebaseAuth = FirebaseAuth.instance;

  static Future<void> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthException.fromFirebaseAuth(e);
    }
  }

  static Future<void> signUpWithEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      rethrow;
    }
  }

  static Future<void> signOut() async {
    _firebaseAuth.signOut();
  }
}

class AuthException extends FirebaseAuthException {
  AuthException({
    super.message,
    required super.code,
    this.email,
    this.credential,
    this.phoneNumber,
    this.tenantId,
  });

  factory AuthException.fromFirebaseAuth(FirebaseAuthException e) {
    return AuthException(
      code: e.code,
      message: e.message,
      email: e.email,
      credential: e.credential,
      phoneNumber: e.phoneNumber,
      tenantId: e.tenantId,
    );
  }

  /// The email of the user's account used for sign-in/linking.
  final String? email;

  /// The [AuthCredential] that can be used to resolve the error.
  final AuthCredential? credential;

  /// The phone number of the user's account used for sign-in/linking.
  final String? phoneNumber;

  /// The tenant ID being used for sign-in/linking.
  final String? tenantId;
}
