// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
//  var number = 42; // Declare and initialize a variable.
//  Object justDyn;
//  print(justDyn.noSuchMethod(invocation)); // Call a function.


//play with class
  MyClass myClass = MyClass.fromParams(1, 2);
  print(MyClass.someConstant2);
  print(myClass.rawString);



  //Spread
  var list;
  //Allows spreading with nulls
  var list2 = [0, ...?list];
  print(list2);
//  assert(list2.length == 4);


  //collection for and collection if are supported
  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '--0',
    for (var i in listOfInts) '--$i'
  ];
  print(listOfStrings);
  assert(listOfStrings[1] == '--1');


  //Maps
  //Don't allow repeating keys
  //Both Sets and Maps use {}
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'fifth': 'will override previous value'
  };

  print(gifts.values);
  gifts.forEach((hey, ho) => print("Hello"));


  print("\u{1f600}");


}


class MyClass {

  //must be static
  static const someConstant = "I'm a constant";
  static const someConstant2 = 'I\'m a constant';
  var rawString = r"I'm a raw string. See runes";
  var myOtherConstant = const Object().runtimeType;

  var myList = [1, 2, "3"];

  final int x;
  final int y;

  MyClass.fromParams(var x, var y)
      :x=x,
      y=y
  {
    myList.add("value");
    print("if any ${myList.any((test) => test == "3")}");
    print("$this" + x.toString() + y.toString());

}

}


