part of '../base.imports.dart';

extension ColorConversion on Color {
  Future<void> setStatusBarColor() async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: this),
    );
  }
}

extension NullableColorConversion on Color? {
  Color? get splashColorEffect => this?.withOpacity(0.05);
  Color? get highlightColorEffect => this?.withOpacity(0.01);
}
