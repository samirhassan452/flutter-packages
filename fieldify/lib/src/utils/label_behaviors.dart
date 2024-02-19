part of '../base.imports.dart';

enum LabelBehavior {
  /// The label will always be positioned above the content.
  above,

  /// The label will be floating based on FloatingLabelBehavior value.
  asDefault,
  ;

  bool get isAbove => this == LabelBehavior.above;
  bool get isAsDefault => this == LabelBehavior.asDefault;
}
