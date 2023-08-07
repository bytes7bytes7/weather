import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exceptions/exceptions.dart';
import '../../env/env.dart';

const _weakPassword = 'weak-password';
const _emailAlreadyInUse = 'email-already-in-use';
const _invalidEmail = 'invalid-email';
const _operationNotAllowed = 'operation-not-allowed';
const _userDisabled = 'user-disabled';
const _userNotFound = 'user-not-found';
const _wrongPassword = 'wrong-password';

@lazySingleton
class FirebaseDataSource {
  const FirebaseDataSource();

  FirebaseAuth get _firebase => FirebaseAuth.instance;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: Env.firebaseApiKey,
        appId: Env.firebaseAppId,
        messagingSenderId: Env.firebaseMessagingSenderId,
        projectId: Env.firebaseProjectId,
        storageBucket: Env.firebaseStorageBucket,
      ),
    );
  }

  Stream<User?> currentUser() {
    return _firebase.authStateChanges();
  }

  Future<User?> getCurrentUser() async {
    return _firebase.currentUser;
  }

  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await _firebase.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == _emailAlreadyInUse) {
        throw const EmailAlreadyInUseException();
      }

      if (e.code == _invalidEmail) {
        throw const InvalidEmailException();
      }

      if (e.code == _operationNotAllowed) {
        throw const OperationNotAllowedException();
      }

      if (e.code == _weakPassword) {
        throw const WeakPasswordException();
      }

      throw UnknownException(e.toString());
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebase.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == _invalidEmail) {
        throw const InvalidEmailException();
      }

      if (e.code == _userDisabled) {
        throw const UserDisabledException();
      }

      if (e.code == _userNotFound) {
        throw const UserNotFoundException();
      }

      if (e.code == _wrongPassword) {
        throw const WrongCredentialsException();
      }

      throw UnknownException(e.toString());
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }
}
