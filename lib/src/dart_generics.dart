import 'dart_constructor.dart';

main() {
  //Unlike Java, Dark generic types are reified and are carried into runtime

//  It's Ok to omit Generic type
  var foo = Foo();
  print(foo); // Instance of 'Foo<Fruit>'
}

class Foo<T extends Fruit> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

//Generics on first-class functions
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}

class Animal {
  void chase(Animal x) {
    print("I'm a dumb animal implemetation");
  }
}

class Mouse extends Animal {}

class Cat extends Animal {
  //covariant is really simple. It just allows to narrow down the scope.
  void chase(covariant Mouse x) {
    print("Mouse inside the Cat");
  }
}
