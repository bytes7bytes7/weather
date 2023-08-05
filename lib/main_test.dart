import 'package:injectable/injectable.dart';

import 'run.dart';

Future<void> main() async {
  await run(Environment.test);
}
