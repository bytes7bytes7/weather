// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'firebaseApiKey')
  static final String firebaseApiKey = _Env.firebaseApiKey;

  @EnviedField(varName: 'firebaseAppId')
  static final String firebaseAppId = _Env.firebaseAppId;

  @EnviedField(varName: 'firebaseMessagingSenderId')
  static final String firebaseMessagingSenderId =
      _Env.firebaseMessagingSenderId;

  @EnviedField(varName: 'firebaseProjectId')
  static final String firebaseProjectId = _Env.firebaseProjectId;

  @EnviedField(varName: 'firebaseStorageBucket')
  static final String firebaseStorageBucket = _Env.firebaseStorageBucket;
}
