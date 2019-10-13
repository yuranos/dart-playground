import 'dart:io';

Iterable<int> countStreamSync(int max) sync* {
  for (int i = 0; i < max; ++i) {
    yield i;
    sleep(Duration(seconds: 3));
  }
}

Stream<int> countStreamAsync(int max) async* {
  for (int i = 0; i < max; ++i) {
    yield i;
    sleep(Duration(seconds: 3));
    print("Will be printed on every call to the generator");
  }
}

//void main() {
//  print('start');
//  countStreamSync(5).forEach((data) {
//    print(data);
//  });
//  print('end');
//}

void main() {
  print('start');
  countStreamAsync(5).listen((data) {
    print(data);
  }, onDone: () {
    print("Done");
  });
  print('end');
}
