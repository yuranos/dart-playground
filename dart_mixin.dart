//No interface keyword

main() {

  Apple("Macintosh").printMe();

}


class Apple with Fruit {
  Apple(name) {
    print(name);
  }
  printMe() {
//    if we use "implements" we can't call super method
    super.printMe();
    print("I'm an apple");
  }
}

//Limiting usage of mixin to only Meat types
mixin Fruit on Meat {
  printMe() {
    print("I'm a fruit");
  }
}

class Meat {

}
