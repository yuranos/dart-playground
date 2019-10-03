//Also see: https://dart.dev/guides/language/sound-problems

class SortedCollection1 {
  Function compare;

  SortedCollection1(int f(Object a, Object b)) {
    compare = f;
  }
}

// Initial, broken implementation.

typedef Compare = int Function(Object a, Object b);

class SortedCollection2 {
  Compare compare;

  SortedCollection2(this.compare);
}

void main() {
  SortedCollection1 coll1 = SortedCollection1(sort);

  // All we know is that compare is a function,
  // but what type of function?
  assert(coll1.compare is Function);

  //Type safety with typedef
  SortedCollection2 coll2 = SortedCollection2(sort);
  assert(coll2.compare is Function);
  assert(coll2.compare is Compare);

  //casting
  var names = [1, "", 1.2];
  print(names.cast<String>());
}

int sort(Object a, Object b) => 0;
