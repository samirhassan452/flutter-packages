part of '../base.imports.dart';

extension ContextConversion on BuildContext {
  ViewPadding get screenPadding => View.of(this).padding;
  double get topPadding => screenPadding.top;
  double get bottomPadding => _bottomPadding;
  double get leftPadding => screenPadding.left;
  double get rightPadding => screenPadding.right;
  Size get screenSize => MediaQuery.of(this).size;
  double get screenHeight => screenSize.height;
  double get screenWidth => screenSize.width;

  /// RTL: Right-To-Left
  ///
  /// LTR: Left-To-Right
  ///
  /// check the direction of app if is RTL as it is in Arabic language
  /// or is LTR as it is in English language
  bool get isRTL => Directionality.of(this) == TextDirection.rtl;

  TextDirection get reversedDirection =>
      isRTL ? TextDirection.ltr : TextDirection.rtl;

  void hideKeyboard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }

  bool get isLandscapeOrientation {
    return View.of(this).viewInsets.bottom == 0.0;
    // return MediaQuery.of(this).orientation == Orientation.landscape;
  }

  bool get isPortraitOrientation {
    return View.of(this).viewInsets.bottom != 0.0;
    // return MediaQuery.of(this).orientation == Orientation.portrait;
  }

  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;

  double get statusBarHeight => MediaQuery.of(this).padding.top;

  double get keyboardHeight => View.of(this).viewInsets.bottom;

  bool get isKeyboardVisible => keyboardHeight > 0.0;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  double get _bottomPadding =>
      WidgetsBinding.instance.platformDispatcher.implicitView?.padding.bottom ??
      PlatformDispatcher.instance.implicitView?.padding.bottom ??
      screenPadding.bottom;
}
