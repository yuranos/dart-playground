main() async {
//  var numbers = asynchronousNaturalsTo(5);
//  numbers.forEach((element) {
//    print(element);
//  });

//  Bad state: Stream has already been listened to.
//  numbers = asynchronousNaturalsTo(5);
//  await for (int i in numbers) { print("event loop $i"); }

//  Printing:
//  0
//  event loop 0
//  1
//  event loop 1
//  2
//  event loop 2
//  3
//  event loop 3
//  4
//  event loop 4
  var recur = naturalsDownFromWrong(3);
  recur.forEach((element) {
    print(element);
  });
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFromRight(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFromRight(n - 1);
  }
}

Iterable naturalsDownFromWrong(n) sync* {
  if (n > 0) {
    //just works with Iterables. Can be yield* [5, 4, 3]
    yield n;
    for (int i in naturalsDownFromWrong(n)) {
      yield i;
    }
  }
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
