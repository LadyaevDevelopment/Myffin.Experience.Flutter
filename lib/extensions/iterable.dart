extension IterableExtensions<T> on Iterable<T> {
  Iterable<E> mapIndexed<E>(E Function(T e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
