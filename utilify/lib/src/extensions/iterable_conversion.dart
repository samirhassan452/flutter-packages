part of '../base.imports.dart';

extension IterableConversion<E> on Iterable<E> {
  Iterable<E> tryReverse({bool reverse = false}) =>
      reverse ? toList().reversed : this;
}
