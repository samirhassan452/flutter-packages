part of '../base.imports.dart';

class Widgey extends Abstractor {
  Widgey.draggableSheet({
    super.key,
    double initialHeight = 0.45,
    double minHeight = 0.40,
    double maxHeight = 0.90,
    bool expand = false,
    bool shouldCloseOnMinExtent = true,
    //
    Color backgroundColor = Colors.transparent,
    bool showClose = true,
    VoidCallback? onClose,
    bool isHeaderSticky = true,
    double headerHeight = 0.0,
    Widget? header,
    ScrollPhysics? physics,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    List<Widget> children = const [],
    Widget? bottomNavigationBar,
    EdgeInsetsGeometry bottomNavBarPadding = EdgeInsets.zero,
  }) : super(
          child: DraggableSheetWidget(
            initialHeight: initialHeight,
            minHeight: minHeight,
            maxHeight: maxHeight,
            expand: expand,
            shouldCloseOnMinExtent: shouldCloseOnMinExtent,
            backgroundColor: backgroundColor,
            showClose: showClose,
            onClose: onClose,
            isHeaderSticky: isHeaderSticky,
            headerHeight: headerHeight,
            header: header,
            bottomNavigationBar: bottomNavigationBar,
            bottomNavBarPadding: bottomNavBarPadding,
            physics: physics,
            padding: padding,
            children: children,
          ),
        );

  ///
  Widgey.draggableSheetBuilder({
    super.key,
    double initialHeight = 0.45,
    double minHeight = 0.40,
    double maxHeight = 0.90,
    bool expand = false,
    bool shouldCloseOnMinExtent = true,
    //
    Color backgroundColor = Colors.transparent,
    bool showClose = true,
    VoidCallback? onClose,
    bool isHeaderSticky = true,
    double headerHeight = 0.0,
    Widget? header,
    required Widget Function(BuildContext, ScrollController) builder,
    Widget? bottomNavigationBar,
    EdgeInsetsGeometry bottomNavBarPadding = EdgeInsets.zero,
  }) : super(
          child: DraggableSheetWidget.builder(
            initialHeight: initialHeight,
            minHeight: minHeight,
            maxHeight: maxHeight,
            expand: expand,
            shouldCloseOnMinExtent: shouldCloseOnMinExtent,
            backgroundColor: backgroundColor,
            showClose: showClose,
            onClose: onClose,
            isHeaderSticky: isHeaderSticky,
            headerHeight: headerHeight,
            header: header,
            bottomNavigationBar: bottomNavigationBar,
            bottomNavBarPadding: bottomNavBarPadding,
            builder: builder,
          ),
        );

  ///
  Widgey.listNode({
    super.key,
    Widget? title,
    Widget? subtitle,
    Widget? leading,
    Widget? trailing,
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
    double? height,
    double? width,
    Color? color,
    Color? surfaceTintColor,
    Color? selectedColor,
    Color disabledColor = const Color(0xFFC4C4C4),
    Color? shadowColor,
    Color? rippleEffectColor,
    Color? splashColor,
    Color? highlightColor,
    double elevation = 0.0,
    BorderRadiusGeometry? borderRadius,
    // BoxBorder? border,
    ShapeBorder? shape,
    MainAxisAlignment subtitleMainAxisAlignment = MainAxisAlignment.start,
    MainAxisAlignment leadingMainAxisAlignment = MainAxisAlignment.start,
    MainAxisAlignment trailingMainAxisAlignment =
        MainAxisAlignment.spaceBetween,
    // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    CrossAxisAlignment subtitleCrossAxisAlignment = CrossAxisAlignment.start,
    CrossAxisAlignment leadingCrossAxisAlignment = CrossAxisAlignment.center,
    CrossAxisAlignment trailingCrossAxisAlignment = CrossAxisAlignment.center,
    bool enabled = true,
    bool selected = false,
    double gap = 12.0,
    double? leadingGap,
    double? trailingGap,
    double? subtitleGap,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
  }) : super(
          child: ListNodeWidget(
            leading: leading,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
            padding: padding,
            height: height,
            width: width,
            color: color,
            surfaceTintColor: surfaceTintColor,
            selectedColor: selectedColor,
            disabledColor: disabledColor,
            shadowColor: shadowColor,
            rippleEffectColor: rippleEffectColor,
            splashColor: splashColor,
            highlightColor: highlightColor,
            elevation: elevation,
            borderRadius: borderRadius,
            // border: border,
            shape: shape,
            subtitleMainAxisAlignment: subtitleMainAxisAlignment,
            leadingMainAxisAlignment: leadingMainAxisAlignment,
            trailingMainAxisAlignment: trailingMainAxisAlignment,
            // crossAxisAlignment: crossAxisAlignment,
            leadingCrossAxisAlignment: leadingCrossAxisAlignment,
            trailingCrossAxisAlignment: trailingCrossAxisAlignment,
            subtitleCrossAxisAlignment: subtitleCrossAxisAlignment,
            enabled: enabled,
            selected: selected,
            gap: gap,
            leadingGap: leadingGap,
            trailingGap: trailingGap,
            subtitleGap: subtitleGap,
            onTap: onTap,
            onLongPress: onLongPress,
            onDoubleTap: onDoubleTap,
          ),
        );

  ///
  Widgey.glowingScroll({
    super.key,
    AxisDirection axisDirection = AxisDirection.down,
    Color? glowingColor,
    required Widget child,
  }) : super(
          child: GlowingScrollWidget(
            axisDirection: axisDirection,
            glowingColor: glowingColor,
            child: child,
          ),
        );

  ///
  Widgey.label({
    super.key,
    required Widget child,
    bool isRequired = false,
    AsteriskPosition asteriskPosition = AsteriskPosition.end,
    Widget? label,
    String? labelText,
    TextStyle? style,
    int? maxLines,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    double gap = 6.0,
  }) : super(
          child: WidgetLabel(
            isRequired: isRequired,
            asteriskPosition: asteriskPosition,
            label: label,
            labelText: labelText,
            style: style,
            maxLines: maxLines,
            padding: padding,
            gap: gap,
            child: child,
          ),
        );

  ///
  Widgey.error({
    super.key,
    required Widget child,
    Widget? error,
    String? errorText,
    TextStyle? style,
    int? maxLines,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    double gap = 6.0,
  }) : super(
          child: WidgetError(
            error: error,
            errorText: errorText,
            style: style,
            maxLines: maxLines,
            padding: padding,
            gap: gap,
            child: child,
          ),
        );

  ///
  Widgey.labelWithError({
    super.key,
    required Widget child,
    bool isRequired = false,
    AsteriskPosition asteriskPosition = AsteriskPosition.end,
    Widget? label,
    String? labelText,
    TextStyle? labelStyle,
    int? labelMaxLines,
    EdgeInsetsGeometry labelPadding = EdgeInsets.zero,
    double labelGap = 6.0,
    Widget? error,
    String? errorText,
    TextStyle? errorStyle,
    int? errorMaxLines,
    EdgeInsetsGeometry errorPadding = EdgeInsets.zero,
    double errorGap = 6.0,
  }) : super(
          child: WidgetLabelWithError(
            error: error,
            errorText: errorText,
            errorStyle: errorStyle,
            errorMaxLines: errorMaxLines,
            errorPadding: errorPadding,
            errorGap: errorGap,
            isRequired: isRequired,
            asteriskPosition: asteriskPosition,
            label: label,
            labelText: labelText,
            labelStyle: labelStyle,
            labelMaxLines: labelMaxLines,
            labelPadding: labelPadding,
            labelGap: labelGap,
            child: child,
          ),
        );

  ///
  Widgey.keepAlive({
    super.key,
    required Widget child,
  }) : super(
          child: KeepAlivePage(
            key: key,
            child: child,
          ),
        );
}
