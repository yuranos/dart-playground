main() {
  //const Map, const List, const Objects
  const pointAndLine = const {
    'point': const [const ImmutablePoint(0, 0)],
    'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
  };
  //Same as the following since Dart 2
  const pointAndLine1 = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
  };
}

class ImmutablePoint {
  final x, y;

  const ImmutablePoint(this.x, this.y);
}

class Point {
  int x;
  num y;
}
