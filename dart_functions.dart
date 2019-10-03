/// There are 2 lambda notations:
/// (str) => print("Class was loaded with info: $str")
/// (str) { print("Class was loaded with info: $str"); }

class MyClass {
  void print1() {
    print("Print 1");
  }

  void print2() {
    print("Print 2");
  }
}

///Like SAM or FunctionalInterface
class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

main() {
  //This is called cascading. Even though print1() doesn't return anything, print2() is available
  MyClass()
    ..print1()
    ..print2();

  ///Running SAM
  var wf = WannabeFunction();
  print(wf("Hi", "there,", "gang"));

  var namedParamVar = funcWithNamedParams(name: "Yura", surname: "Nosenko");

  ///Won't even allow to print, saying that void can't be used that way.
  //  print(namedParamVar);
  Function namedParamFunc = funcWithNamedParams;
  funcWithNamedParams(name: "Yura", surname: "Nosenko");

  ///This won't work AT RUNTIME. It is not very clear from the message why. But the real problem is just that only named parameters are expected.
//  namedParamFunc("Yura", "Nosenko");

  print(namedParamFunc.runtimeType);

  funcWithOptional("Yura", "Nosenko", "Volodimirovich");
}

void funcWithNamedParams({String name, String surname}) {
  print("$name $surname");
}

void funcWithOptional(String name, String surname, [String middleName]) {
  print("$name ${middleName ?? "A"} $surname");
}
