main() {
  var b;
  b ??= 5;
  print(b);

  b ??= 0;
  //won't be changed to 0 as it's already assigned.
  print(b);

  SomeClass someNullClass;
  //Null-safe call, like in Kotlin.
  someNullClass?.someVar;
}

class SomeClass {
  var someVar = 5;
}
