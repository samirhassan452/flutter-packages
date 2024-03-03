part of '../base.imports.dart';

class WidgetError extends StatelessWidget {
  final Widget child;
  final Widget? error;
  final String? errorText;
  final TextStyle? style;
  final int? maxLines;
  final EdgeInsetsGeometry padding;
  final double gap;
  const WidgetError({
    super.key,
    required this.child,
    this.error,
    this.errorText,
    this.style,
    this.maxLines,
    this.padding = EdgeInsets.zero,
    this.gap = 6.0,
  }) : assert(
          !(error != null && errorText != null),
          'Declaring both error and errorText is not supported.',
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        child,
        showError ? gap.gap : const SizedBox.shrink(),
        AnimatedSwitcher(
          duration: UDuration.animationDuration,
          child: switch (showError) {
            (bool show) when show && error != null =>
              Padding(padding: padding, child: error),
            (bool show) when show => Padding(
                padding: padding,
                child: Textify(
                  errorText!,
                  style: getStyle(context),
                  maxLines: maxLines,
                ),
              ),
            _ => const SizedBox.shrink(),
          },
        ),
      ],
    );
  }

  bool get showError =>
      (errorText != null && errorText!.isNotEmpty) || error != null;
  TextStyle getStyle(BuildContext context) =>
      style ??
      Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Theme.of(context).colorScheme.error);
}
