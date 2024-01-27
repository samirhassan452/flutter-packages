part of '../base.imports.dart';

class WidgetLabelWithError extends StatelessWidget {
  final Widget child;
  final bool isRequired;
  final AsteriskPosition asteriskPosition;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final int? labelMaxLines;
  final EdgeInsetsGeometry labelPadding;
  final double labelGap;
  //
  final Widget? error;
  final String? errorText;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  final EdgeInsetsGeometry errorPadding;
  final double errorGap;
  const WidgetLabelWithError({
    super.key,
    required this.child,
    this.isRequired = false,
    this.asteriskPosition = AsteriskPosition.end,
    this.label,
    this.labelText,
    this.labelStyle,
    this.labelMaxLines,
    this.labelPadding = EdgeInsets.zero,
    this.labelGap = 6.0,
    //
    this.error,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.errorPadding = EdgeInsets.zero,
    this.errorGap = 6.0,
  })  : assert(
          !(label != null && labelText != null),
          'Declaring both label and labelText is not supported.',
        ),
        assert(
          !(error != null && errorText != null),
          'Declaring both error and errorText is not supported.',
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: UDuration.animationDuration,
          child: switch (showLabel) {
            (bool show) when show => Padding(
                padding: labelPadding,
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
                            style: getLabelStyle(context),
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
        showLabel ? labelGap.gap : const SizedBox.shrink(),
        Flexible(child: child),
        showError ? errorGap.gap : const SizedBox.shrink(),
        AnimatedSwitcher(
          duration: UDuration.animationDuration,
          child: switch (showError) {
            (bool show) when show && error != null =>
              Padding(padding: errorPadding, child: error),
            (bool show) when show => Padding(
                padding: errorPadding,
                child: Textify(
                  errorText!,
                  style: getErrorStyle(context),
                  maxLines: errorMaxLines,
                ),
              ),
            _ => const SizedBox.shrink(),
          },
        ),
      ],
    );
  }

  bool get showLabel =>
      (labelText != null && labelText!.isNotEmpty) || label != null;
  TextStyle getLabelStyle(BuildContext context) =>
      labelStyle ?? TextStyle(color: Theme.of(context).hintColor);
  TextStyle asteriskStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: Theme.of(context).colorScheme.error);

  bool get showError =>
      (errorText != null && errorText!.isNotEmpty) || error != null;
  TextStyle getErrorStyle(BuildContext context) =>
      errorStyle ??
      Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Theme.of(context).colorScheme.error);
}
