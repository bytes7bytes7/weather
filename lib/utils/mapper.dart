/// [F] - from type, [T] - to type.
abstract class Mapper<F, T> {
  const Mapper();

  T map(F item);

  List<T> mapList(List<F> items) {
    return items.map(map).toList();
  }
}
