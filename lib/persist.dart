import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/things.txt');
}

Future<File> writeState(String thingState) async {
  final file = await _localFile;
  return file.writeAsString(thingState);
}

Future<File> writeAndReadState(String thingState) async {
  await writeState(thingState);
  var newState = await readState();
  print('## New state string: $newState');
}

Future<String> readState() async {
  try {
    final file = await _localFile;

    // Read the file
    String contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return 'Read error: $e';
  }
}