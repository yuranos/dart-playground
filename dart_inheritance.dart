import 'package:flutter/services.dart';

main() {

  Apple("Macintosh").printMe();


//  PECS:
//  You can replace a consumer’s type with a supertype and a producer’s type with a subtype.
//  Animal c - consumer, Cat() - producer
  Animal c = Cat();
//Allowed but is bad, can fail at runtime
  //
  List<Cat> myCats = List<Animal>();

}


//Fruit as any object in Dart has an implicit constructor
class Apple implements Fruit {
  //Unlike example in dart_constructor will call Object()
  Apple(name) : super() {
    print(name);
  }
  printMe() {
    print("I'm an apple");
  }
}

class Fruit {
  Fruit(name);
  Fruit.fromName(name);
//  not possible to have several unnamed constructors
//  Fruit(fruitName);
  printMe() {
    print("I'm a fruit");
  }
}

// Initializer list sets instance variables before
// the constructor body runs.
class Point {
  var x,y;
  Point.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

}



//The return type of a method in a subclass must be the
// same type or a subtype of the return type of the method in the superclass.
//The parameter of an overridden method must have either the same type
//or a supertype of the corresponding parameter in the superclass.
class Animal {
  void chase(Animal a) {
    print("Chasing");
  }
  Animal get parent => Animal();
}

class Cat extends Animal {
  @override
  void chase(Mouse a) {
    print("Chasing");
  }
  @override
  Cat get parent => Cat();
}

class Mouse extends Animal {

}


