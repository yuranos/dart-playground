main() {

//  Initialization sequence
//  initializer list
//  superclass’s no-arg constructor
//  main class’s no-arg constructor
  Apple("Macintosh").printMe();
//  Fruit().printMe();

}

class Apple extends Fruit {
  Apple(name) : super(name.toUpperCase()) {
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
