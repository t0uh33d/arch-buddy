import 'dart:io';

import 'package:pubspec_parse/pubspec_parse.dart';

class ArchBuddyInit {
  static void init() async {
    String commandExecPath = Directory.current.path;
    File file = File('$commandExecPath/pubspec.yaml');
    String str = await file.readAsString();
    Pubspec pubspec = Pubspec.parse(str);
  }
}
