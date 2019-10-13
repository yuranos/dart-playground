import 'dart:async';

import 'package:rxdart/rxdart.dart';

//Most Dart Streams are single subscription streams,
// meaning that after they’ve listened once they can’t listen a second time
// without throwing an exception.
// This is different than other implementations of Rx.
// Flutter comes with a handy Widget called StreamBuilder.
//https://www.burkharts.net/apps/blog/fundamentals-of-dart-streams/
StreamController<String> streamController =
    StreamController.broadcast(); //Add .broadcast here

main() async {
//  The controller buffers all incoming events until a subscriber is registered, but this feature should only be used in rare circumstances.
  var controller = StreamController<String>();

  StreamSubscription subscription = controller.stream.listen((item) async {
    //Even regular streams seem to be parallel. justWait is called 3 times immediately and the items are emitted later.
    await justWait(numberOfSeconds: 2);
    print(item);
  }); // this is the trap for events.

  controller.add("Item1");
  controller.add("Item2");
  controller.add("Item3");

  //RX
  var streamObservable = Observable(controller.stream);
  streamObservable.listen(print);
}

void justWait({int numberOfSeconds}) async {
  print("wait is called");
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

//  await justWait(numberOfSeconds: 5);
