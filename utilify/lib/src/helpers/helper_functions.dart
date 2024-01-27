part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UHelperFunction {
  UHelperFunction._();

  static String truncateString(String value, int maxLength) {
    if (value.length <= maxLength) {
      return value;
    } else {
      return '${value.substring(0, maxLength)}...';
    }
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }
}
