import 'package:collection/collection.dart';

enum Status {
  Activo,
  Inactivo,
}

enum BringFromCounter {
  Mesa,
  Barra,
  Ambas,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (BringFromCounter):
      return BringFromCounter.values.deserialize(value) as T?;
    default:
      return null;
  }
}
