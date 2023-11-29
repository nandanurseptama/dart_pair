# pair

A Pair class in dart that inspired from Pair in java

## Features

- Create New Pair
- Transform pair to Map
- Transfor pair to list (if pair has same type between key and value)
- Mutate to other Pair
- Transform to single new type

## Getting started

```bash
dart pub add pair
```

## Usage

### Intialize new pair
```dart

import 'package:pair/pair.dart';

void main() {
  var pair = Pair<int, int>(
    1, // key
    2, // value
  );

  print("pair: $pair");
  print("pair.toList(): ${pair.toList}");
  print("pair.toMap(): ${pair.toMap}");

  // transform pair to new value with difference type
  //
  // by passing transform function
  var tranformed = pair.transform(tranformFunction);

  print("transformed pair : $tranformed");

  // mutate pair to another pair
  //
  // by passing mutate function
  var mutated = pair.mutate(mutateFunction<int, int>);

  print("mutated pair : $mutated");

  var reversedPair = pair.reverse;

  print("reversedPair $reversedPair");

  // deserialized pair
  var (a, b) = pair();

  print("deserialized value. a=$a, b=$b");

  // Pair with difference type between key and val
  var pair2 = Pair<String, int>(
    "index", // key
    1, // value
  );
  print("pair $pair2");

  var pairToList =
      pair2.toList; // it will throw because key and value do not have same type
}

int tranformFunction(int a, int b) {
  return a + b;
}

Pair<String, String> mutateFunction<K, V>(K key, V value) {
  return Pair(
    key.toString(),
    value.toString(),
  );
}
```

## Additional information

You can make a pull request to create a new feature or bug fixing