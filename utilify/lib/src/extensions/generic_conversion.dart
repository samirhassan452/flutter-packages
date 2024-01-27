part of '../base.imports.dart';

extension GenericConversion<T> on T? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;

  bool get isTrue => isNotNull && this is bool && this == true;
  bool get isFalse => isNotNull && this is bool && this == false;
}
