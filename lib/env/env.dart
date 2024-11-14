import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'lib/env/.env')
abstract class Env {
  @EnviedField(varName: 'SPARK_API_KEY', obfuscate: true)
  static final String sparkApiKey = _Env.sparkApiKey;
}
