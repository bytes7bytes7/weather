import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Order(-1)
@singleton
class HideModule {
  @PostConstruct(preResolve: true)
  Future<void> init() {
    return Hive.initFlutter();
  }
}
