// ignore_for_file: unrelated_type_equality_checks

import 'package:pair/pair.dart';
import 'package:test/test.dart';

void main() {
  group('Test Pair with same type between key and value', () {
    final pair = Pair<int, int>(
      1,
      2,
    );

    test('Pair should match with other Pair with same value and type', () {
      var comparedPair = Pair<int, int>(
        1,
        2,
      );

      expect(
        pair,
        comparedPair,
      );
      expect(
        pair.key,
        comparedPair.key,
      );
      expect(
        pair.value,
        comparedPair.value,
      );
    });

    test('Pair should not match with other Pair with difference value or type',
        () {
      var comparedPair = Pair<String, int>(
        "1",
        3,
      );

      expect(
        pair == comparedPair,
        false,
      );
      expect(
        pair.key == comparedPair.key,
        false,
      );
      expect(
        pair.value == comparedPair.value,
        false,
      );
    });

    test(
      "Pair with same type between key and value should can create list",
      () {
        expect(() => pair.toList, returnsNormally);

        expect(
          pair.toList,
          [1, 2],
        );
      },
    );

    test(
      "Pair with difference type between key and value should not can create list",
      () {
        var pairToTest = Pair(
          "1",
          2,
        );
        expect(
          () => pairToTest.toList,
          throwsA(isA<AssertionError>()),
        );
      },
    );

    test("Pair should be able create a map", () {
      expect(
        () => pair.toMap,
        returnsNormally,
      );
      expect(
        pair.toMap,
        {1: 2},
      );
    });
  });
}
