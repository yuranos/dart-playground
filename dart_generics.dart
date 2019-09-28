import 'dart_constructor.dart';

main() {

  //Unlike Java, Dark generic types are reified and are carried into runtime


//  It's Ok to ommit Generic type
  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'

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
