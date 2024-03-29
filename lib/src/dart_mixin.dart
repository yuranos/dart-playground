//No interface keyword

main() {
  Apple("Macintosh").printMe();
}

class Apple extends Edible with Fruit {
  Apple(name) {
    print(name);
  }
  printMe() {
    //    if we use "implements" we can't call super method
    // Seems to be Mixin over Inheritance
    super.printMe();
    print("I'm an apple");
  }
}

//Limiting usage of mixin to only Meat types
mixin Fruit {
  printMe() {
    print("I'm a fruit");
  }
}

class Edible {
  printMe() {
    print("I'm anything edible");
  }
}

class Meat {}
