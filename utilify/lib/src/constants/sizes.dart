part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class USize {
  //? Private constructor
  USize._();

  //? Padding and Margin sizes
  static const double xsmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double xlarge = 32.0;
  static const double xxlarge = 48.0;

  //? Icons sizes
  static const double xsmallIcon = 12.0;
  static const double smallIcon = 16.0;
  static const double mediumIcon = 24.0;
  static const double largeIcon = 32.0;
  static const double xlargeIcon = 48.0;

  //? Font sizes
  static const double smallText = 14.0;
  static const double mediumText = 16.0;
  static const double largeText = 18.0;

  //? Button sizes
  static const double buttonHeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;
  static const double buttonElevation = 4.0;

  //? AppBar height
  static const double appBarHeight = 56.0;

  //? Image sizes
  static const double imageThumbSize = 80.0;

  //? Default spacing among sections
  static const double defaultSpacing = 24.0;
  static const double spaceAmongItems = 16.0;
  static const double spaceAmongSections = 32.0;

  //? Border radius
  static const double smallBorderRadius = 4.0;
  static const double mediumBorderRadius = 8.0;
  static const double largeBorderRadius = 12.0;

  //? Divider height
  static const double dividerHeight = 1.0;

  //? Input field
  static const double inputFieldRaidius = 12.0;
  static const double spaceAmongInputFields = 16.0;

  //? Card sizes
  static const double xsmallCardRadius = 6.0;
  static const double smallCardRadius = 10.0;
  static const double mediumCardRadius = 12.0;
  static const double largeCardRadius = 16.0;
  static const double cardElevation = 2.0;

  //? Loading indicator size
  static const double loadingIndicatorSize = 36.0;

  //? Grid view spacing
  static const double gridViewCrossSpacing = 16.0;
  static const double gridViewMainSpacing = 16.0;
}
