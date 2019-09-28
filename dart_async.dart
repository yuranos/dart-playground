import 'dart:async';
import 'dart:io';

//async functions execute synchronously until the first await or return.
main() async {
  await lookUpVersion();
  print("I'm done");

  var searchPath = "/home/yuranos/development/softwarden";
  FileSystemEntity.isDirectory(searchPath).then((isDir) {
    if (isDir) {
      final startingDir = Directory(searchPath);
      startingDir.list(recursive: false, followLinks: false).listen((entity) {
        if (entity is File) {
          print(entity);
        }
      });
    }
  });
}

dynamic lookUpVersion() async {
  print("In async function");
  return Future.delayed(const Duration(seconds: 3));
}
