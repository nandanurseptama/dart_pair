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

```dart
var pair = Pair<int, int>(
    1, // key
    2, // value
  );

  print("pair: $pair");
  print("pair.toList(): ${pair.toList}");
  print("pair.toMap(): ${pair.toMap}");

  // Pair with difference type between key and val

  var pair2 = Pair<String, int>(
    "index", // key
    1, // value
  );
  print("pair $pair2");

  var pairToList =
      pair2.toList; // it will throw because key and value do not have same type
```

## Additional information

You can make a pull request to create a new feature or bug fixing