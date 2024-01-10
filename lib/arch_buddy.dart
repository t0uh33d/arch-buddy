import 'package:arch_buddy/commands/init/init.dart';
import 'package:arch_buddy/config/runtime_configs.dart';

void startArchBuddy(List<String> args) {
  // guard clause to check for valid arguments if provided
  // if (args.isEmpty || args[0] != "init") {
  //   print("Invalid command, try : arch-buddy init");
  //   return;
  // }

  RuntimeConfig.initialize();

  /// supports only one command for now
  /// ```
  /// arch-buddy init
  /// ```
  ArchBuddyInit.init();
}
