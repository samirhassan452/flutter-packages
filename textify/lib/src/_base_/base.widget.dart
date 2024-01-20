part of '../base.imports.dart';

class Textify extends Abstractor {
  ///
  Textify(
    String text, {
    super.key,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    TextWidthBasis? textWidthBasis,
    Color? selectionColor,
  }) : super(
          child: Text(
            text,
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaler: textScaler,
            maxLines: maxLines,
            textWidthBasis: textWidthBasis,
            selectionColor: selectionColor,
          ),
        );

  ///
  Textify.rich(
    TextSpan textSpan, {
    super.key,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    TextWidthBasis? textWidthBasis,
    Color? selectionColor,
  }) : super(
          child: Text.rich(
            textSpan,
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaler: textScaler,
            maxLines: maxLines,
            textWidthBasis: textWidthBasis,
            selectionColor: selectionColor,
          ),
        );

  ///
  Textify.autoSize(
    String text, {
    super.key,
    Key? textKey,
    TextStyle? style,
    double minFontSize = 12,
    double maxFontSize = double.infinity,
    double stepGranularity = 1,
    List<double>? presetFontSizes,
    AutoSizeGroup? group,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    bool wrapWords = true,
    TextOverflow? overflow,
    Widget? overflowReplacement,
    double? textScaleFactor,
    int? maxLines,
  }) : super(
          child: AutoSizeText(
            text,
            textKey: textKey,
            style: style,
            minFontSize: minFontSize,
            maxFontSize: maxFontSize,
            stepGranularity: stepGranularity,
            presetFontSizes: presetFontSizes,
            group: group,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            wrapWords: wrapWords,
            overflow: overflow,
            overflowReplacement: overflowReplacement,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
          ),
        );

  ///
  Textify.autoSizeRich(
    TextSpan textSpan, {
    super.key,
    Key? textKey,
    TextStyle? style,
    double minFontSize = 12,
    double maxFontSize = double.infinity,
    double stepGranularity = 1,
    List<double>? presetFontSizes,
    AutoSizeGroup? group,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    bool wrapWords = true,
    TextOverflow? overflow,
    Widget? overflowReplacement,
    double? textScaleFactor,
    int? maxLines,
  }) : super(
          child: AutoSizeText.rich(
            textSpan,
            textKey: textKey,
            style: style,
            minFontSize: minFontSize,
            maxFontSize: maxFontSize,
            stepGranularity: stepGranularity,
            presetFontSizes: presetFontSizes,
            group: group,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            wrapWords: wrapWords,
            overflow: overflow,
            overflowReplacement: overflowReplacement,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
          ),
        );

  ///
  Textify.selectable(
    String text, {
    super.key,
    FocusNode? focusNode,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextScaler? textScaler,
    bool showCursor = false,
    bool autofocus = false,
    int? minLines,
    int? maxLines,
    //? to remove added space from start:
    // Assign 0.0 to cursorWidth to be more close to default Text widget
    double cursorWidth = 0.0,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
    BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    TextSelectionControls? selectionControls,
    void Function()? onTap,
    ScrollPhysics? scrollPhysics,
    TextWidthBasis? textWidthBasis,
    void Function(TextSelection, SelectionChangedCause?)? onSelectionChanged,
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
  }) : super(
          child: SelectableText(
            text,
            focusNode: focusNode ?? FocusNode(skipTraversal: true),
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            textScaler: textScaler,
            showCursor: showCursor,
            autofocus: autofocus,
            maxLines: maxLines,
            minLines: minLines,
            //? to remove added space from start:
            // 1. Assign 0.0 to cursorWidth to be more close to default Text widget
            // 2. Wrap SelectableText widget to another widget like SizedBox/Container
            //    and assign -1.0 to cursorWidth to be the same as Text widget
            // You can add big value and color arround widget to show difference
            cursorWidth: cursorWidth,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorColor: cursorColor,
            selectionHeightStyle: selectionHeightStyle,
            selectionWidthStyle: selectionWidthStyle,
            dragStartBehavior: dragStartBehavior,
            enableInteractiveSelection: enableInteractiveSelection,
            selectionControls: selectionControls,
            onTap: onTap,
            scrollPhysics: scrollPhysics,
            textWidthBasis: textWidthBasis,
            onSelectionChanged: onSelectionChanged,
            contextMenuBuilder: contextMenuBuilder,
            magnifierConfiguration: magnifierConfiguration,
          ),
        );
}
