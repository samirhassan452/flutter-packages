part of '../base.imports.dart';

class WidgetLabel extends StatelessWidget {
  final Widget child;
  final bool isRequired;
  final AsteriskPosition asteriskPosition;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final int? labelMaxLines;
  final EdgeInsetsGeometry padding;
  final double gap;
  const WidgetLabel({
    super.key,
    required this.child,
    this.isRequired = false,
    this.asteriskPosition = AsteriskPosition.end,
    this.label,
    this.labelText,
    this.labelStyle,
    this.labelMaxLines,
    this.padding = EdgeInsets.zero,
    this.gap = 6.0,
  }) : assert(
          !(label != null && labelText != null),
          'Declaring both label and labelText is not supported.',
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSwitcher(
          duration: UDuration.animationDuration,
          child: switch (showLabel) {
            (bool show) when show => Padding(
                padding: padding,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: asteriskPosition.isStart
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    if (isRequired && asteriskPosition.isStart) ...[
                      Textify("* ", style: asteriskStyle(context)),
                    ],
                    Flexible(
                      child: switch (label != null) {
                        (bool yes) when yes => label!,
                        _ => Textify(
                            labelText!,
                            style: getStyle(context),
                            maxLines: labelMaxLines,
                          ),
                      },
                    ),
                    if (isRequired && asteriskPosition.isEnd) ...[
                      Textify(" *", style: asteriskStyle(context)),
                    ],
                  ],
                ),
              ),
            _ => const SizedBox.shrink(),
          },
        ),
        showLabel ? gap.gap : const SizedBox.shrink(),
        child,
      ],
    );
  }

  bool get showLabel =>
      (labelText != null && labelText!.isNotEmpty) || label != null;
  TextStyle getStyle(BuildContext context) =>
      labelStyle ?? TextStyle(color: Theme.of(context).hintColor);
  TextStyle asteriskStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: Theme.of(context).colorScheme.error);
}
