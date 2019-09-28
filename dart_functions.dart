class MyClass {

  void print1(){
    print("Print 1");
  }

  void print2(){
    print("Print 2");
  }
}


main() {

  //This is called cascading. Even though print1() doesn't return anything, print2() is available
  MyClass()
    ..print1()
    ..print2();

  var namedParamVar = funcWithNamedParams(name : "Yura", surname : "Nosenko");
  Function namedParamFunc = funcWithNamedParams;
  //This won't work
//  namedParamFunc("Yura", "Nosenko");

  print(namedParamFunc.runtimeType);

  funcWithOptional("Yura", "Nosenko", "Volodimirovich");

}


void funcWithNamedParams({String name, String surname}){
  print("$name $surname");
}


void funcWithOptional(String name, String surname, [String middleName]) {
  print("$name ${middleName ?? "A"} $surname");
}
