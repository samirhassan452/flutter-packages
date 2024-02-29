part of '../base.imports.dart';

extension NumConversion on num {
  /// Gap in the direction of its parent
  Widget get gap => Gap(toDouble());

  /// SliverGap in the direction of its parent
  Widget get sliverGap => SliverGap(toDouble());

  /// Space in the direction of its parent
  Widget get space => Gap(toDouble());

  /// Vertical spaces
  Widget get spaceVertical => SizedBox(height: toDouble());

  /// Horizontal space
  Widget get spaceHorizontal => SizedBox(width: toDouble());

  /// Sliver Vertical space
  Widget get sliverSpaceVertical => SliverToBoxAdapter(child: spaceVertical);

  /// Sliver Horizontal space
  Widget get sliverSpaceHorizontal =>
      SliverToBoxAdapter(child: spaceHorizontal);

  ///
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());
  BorderRadiusDirectional get startBorderRadius =>
      BorderRadiusDirectional.horizontal(start: Radius.circular(toDouble()));
  BorderRadiusDirectional get endBorderRadius =>
      BorderRadiusDirectional.horizontal(end: Radius.circular(toDouble()));
  BorderRadiusDirectional get horizontalBorderRadius =>
      BorderRadiusDirectional.horizontal(
        start: Radius.circular(toDouble()),
        end: Radius.circular(toDouble()),
      );
  BorderRadiusDirectional get topBorderRadius =>
      BorderRadiusDirectional.vertical(top: Radius.circular(toDouble()));
  BorderRadiusDirectional get bottomBorderRadius =>
      BorderRadiusDirectional.vertical(bottom: Radius.circular(toDouble()));
  BorderRadiusDirectional get verticalBorderRadius =>
      BorderRadiusDirectional.vertical(
        top: Radius.circular(toDouble()),
        bottom: Radius.circular(toDouble()),
      );

  ///
  EdgeInsetsGeometry get padding => EdgeInsetsDirectional.all(toDouble());
  EdgeInsetsGeometry get paddingStart =>
      EdgeInsetsDirectional.only(start: toDouble());
  EdgeInsetsGeometry get paddingEnd =>
      EdgeInsetsDirectional.only(end: toDouble());
  EdgeInsetsGeometry get paddingTop =>
      EdgeInsetsDirectional.only(top: toDouble());
  EdgeInsetsGeometry get paddingBottom =>
      EdgeInsetsDirectional.only(bottom: toDouble());
  EdgeInsetsGeometry get paddingVertical =>
      EdgeInsetsDirectional.symmetric(vertical: toDouble());
  EdgeInsetsGeometry get paddingHorizontal =>
      EdgeInsetsDirectional.symmetric(horizontal: toDouble());
  EdgeInsetsGeometry get paddingRight => EdgeInsets.only(right: toDouble());
  EdgeInsetsGeometry get paddingLeft => EdgeInsets.only(left: toDouble());

  ///
  Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get min => Duration(minutes: toInt());
  Duration get sec => Duration(seconds: toInt());
  Duration get milsec => Duration(milliseconds: toInt());
  Duration get micsec => Duration(microseconds: toInt());

  ///
  int get fromBytesToMB => (this / (1024 * 1024)).round();

  ///
  bool get isZero => this == 0 || this == 0.0;

  ///
  String toNumberFormat({
    String? format,
    String? locale,
  }) =>
      UFormatter.number(this, format: format, locale: locale);
}
