/// Create a Pair
///
/// [K] is type of [key]
///
/// [V] is type of [value]
///
/// [key] and [value] with same pair can create a list
class Pair<K, V> {
  final K key;
  final V value;

  const Pair(
    this.key,
    this.value,
  );

  @override
  bool operator ==(other) {
    if (other is! Pair) {
      return false;
    }
    return other.key.runtimeType == key.runtimeType &&
        other.key == key &&
        other.value.runtimeType == value.runtimeType &&
        other.value == value;
  }

  Map<K, V> get toMap {
    return <K, V>{
      key: value,
    };
  }

  @override
  String toString() {
    return "Pair($key, $value)";
  }

  Pair<K, V> copyWith({
    K? key,
    V? value,
  }) {
    return Pair(
      key ?? this.key,
      value ?? this.value,
    );
  }

  Pair<V, K> get reverse {
    return Pair<V, K>(
      value,
      key,
    );
  }

  Pair<A, B> mutate<A, B>(Pair<A, B> Function(K key, V value) f) {
    return f(
      key,
      value,
    );
  }

  A transform<A>(A Function(K key, V value) f) {
    return f(
      key,
      value,
    );
  }

  @override
  int get hashCode => Object.hash(
        key,
        value,
      );
}

extension PairExtension<T> on Pair<T, T> {
  List<T> get toList {
    assert(key.runtimeType == value.runtimeType,
        "key and value do not have same type");
    return [
      key,
      value,
    ];
  }
}
