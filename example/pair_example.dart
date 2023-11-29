// ignore_for_file: unused_local_variable

import 'package:pair/pair.dart';

void main() {
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
}
