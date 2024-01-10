import 'dart:io';

class RuntimeConfig {
  static final RuntimeConfig _runtimeConfig = RuntimeConfig._i();

  RuntimeConfig._i();

  factory RuntimeConfig() => _runtimeConfig;

  static late String commandExecutionPath;

  static void initialize() {
    commandExecutionPath = Directory.current.path;
  }
}
