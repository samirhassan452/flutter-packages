part of '../base.imports.dart';

class ListNodeWidget extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;

  final EdgeInsetsGeometry padding;
  final double? height;
  final double? width;
  final Color? color;
  final Color? surfaceTintColor;
  final Color? selectedColor;
  final Color disabledColor;
  final Color? shadowColor;
  final Color? rippleEffectColor;
  final Color? splashColor;
  final Color? highlightColor;
  final double elevation;
  final BorderRadiusGeometry? borderRadius;
  // final BoxBorder? border;
  final ShapeBorder? shape;
  final CrossAxisAlignment crossAxisAlignment;
  final CrossAxisAlignment? leadingCrossAxisAlignment;
  final CrossAxisAlignment? trailingCrossAxisAlignment;

  final bool enabled;
  final bool selected;

  final double gap;
  final double? leadingGap;
  final double? trailingGap;
  final double? subtitleGap;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  const ListNodeWidget({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
    this.height,
    this.width,
    this.color,
    this.surfaceTintColor,
    this.selectedColor,
    this.disabledColor = const Color(0xFFD2D2D2),
    this.shadowColor,
    this.rippleEffectColor,
    this.splashColor,
    this.highlightColor,
    this.elevation = 0.0,
    this.borderRadius,
    // this.border,
    this.shape,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.leadingCrossAxisAlignment,
    this.trailingCrossAxisAlignment,
    this.enabled = true,
    this.selected = false,
    this.gap = 12.0,
    this.leadingGap,
    this.trailingGap,
    this.subtitleGap,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        color: actualColor,
        surfaceTintColor: surfaceTintColor,
        shadowColor: shadowColor,
        elevation: elevation,
        borderRadius: shape == null ? borderRadius : null,
        shape: shape,
        child: InkWell(
          onTap: enabled ? onTap : null,
          onLongPress: enabled ? onLongPress : null,
          splashColor: acutalSplashColor,
          highlightColor: acutalHighlightColor,
          borderRadius: borderRadius?.resolve(Directionality.of(context)),
          customBorder: shape,
          child: Padding(
            padding: padding,
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  trailingCrossAxisAlignment ?? crossAxisAlignment,
              children: [
                Flexible(
                  // fit: trailingFlex,
                  child: Row(
                    crossAxisAlignment:
                        leadingCrossAxisAlignment ?? crossAxisAlignment,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leading != null) ...[
                        leading!,
                        leadingGap?.gap ?? gap.gap,
                      ],
                      Flexible(
                        // fit: leadingFlex,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (title != null) ...[Flexible(child: title!)],
                            if (subtitle != null) ...[
                              subtitleGap?.gap ?? gap.gap,
                              Flexible(child: subtitle!),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (trailing != null) ...[
                  trailingGap?.gap ?? gap.gap,
                  trailing!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color? get acutalSplashColor =>
      splashColor ?? rippleEffectColor?.splashColorEffect;
  Color? get acutalHighlightColor =>
      highlightColor ?? rippleEffectColor?.highlightColorEffect;

  Color? get actualColor => switch (enabled) {
        (_) when enabled == false => disabledColor,
        (_) when selected => selectedColor ?? color,
        _ => color,
      };
}
