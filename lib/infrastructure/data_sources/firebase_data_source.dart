import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

import '../../env/env.dart';

@singleton
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
    await _firebase.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    await _firebase.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
