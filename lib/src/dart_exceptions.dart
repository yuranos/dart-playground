main() {
  //This won't fail
  print(5 / 0);
  print(5.2 / 0);

//  try {
//    breedMoreLlamas();
//  } on OutOfLlamasException {
//     A specific exception
//    buyMoreLlamas();
//  } on Exception catch (e) {
//     Anything else that is an exception
//    print('Unknown exception: $e');
//  } catch (e) {
//     No specified type, handles all
//    print('Something really unknown: $e');
//  }

  misbehave();

  throw "I'm not even an exception";
}

void buyMoreLlamas() {}

//Rethrowing exceptions. Can be used for "partial handing".
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
