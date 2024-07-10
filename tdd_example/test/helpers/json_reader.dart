import 'dart:developer';
import 'dart:io';

String readJson(String name) {
  var dir = Directory.current.path;
  log('directory $dir');
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
    log('directory 22 $dir');
  }

  return File('$dir/test/$name').readAsStringSync();
}
