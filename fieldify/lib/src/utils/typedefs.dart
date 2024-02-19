part of '../base.imports.dart';

typedef BuildCounter = Widget? Function(
  BuildContext, {
  required int currentLength,
  required bool isFocused,
  required int? maxLength,
});
