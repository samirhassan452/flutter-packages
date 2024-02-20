part of '../base.imports.dart';

class FieldifyStyle {
  final LabelBehavior labelBehavior;
  // The following label attributes will be affected only if labelBehavior is aboveField
  final bool isRequired;
  final AsteriskPosition asteriskPosition;
  final int? labelMaxLines;
  final double labelGap;
  final EdgeInsetsGeometry labelPadding;

  final double errorGap;
  final EdgeInsetsGeometry errorPadding;

  // default: it takes the size from IconThemeData
  final double? prefixIconSize;
  // It will be applied on prefix icon but also not exceeds the max height of field
  final EdgeInsetsGeometry? prefixIconPadding;
  // default: it takes the size from IconThemeData
  final double? suffixIconSize;
  // It will be applied on suffix icon but also not exceeds the max height of field
  final EdgeInsetsGeometry? suffixIconPadding;

  // It will be ignored if constraints attribute is provided
  final double minHeight;
  // It will be ignored if constraints attribute is provided
  final double minWidth;

  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final TextStyle? disabledStyle;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool isDigitsOnly;
  final Pattern? allowedInputPattern;
  final Pattern? deniedInputPattern;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final ScrollController? scrollController;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;
  final MouseCursor? mouseCursor;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final UndoHistoryController? undoController;
  final bool? cursorOpacityAnimates;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final DragStartBehavior dragStartBehavior;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final Clip clipBehavior;
  final bool scribbleEnabled;
  final bool canRequestFocus;

  const FieldifyStyle({
    this.isRequired = true,
    this.asteriskPosition = AsteriskPosition.end,
    this.labelBehavior = LabelBehavior.above,
    this.labelMaxLines,
    this.labelGap = 6.0,
    this.labelPadding = const EdgeInsets.symmetric(horizontal: 4.0),
    this.errorGap = 6.0,
    this.errorPadding = const EdgeInsets.symmetric(horizontal: 4.0),
    this.prefixIconSize,
    this.prefixIconPadding,
    this.suffixIconSize,
    this.suffixIconPadding,
    this.minHeight = 56.0,
    this.minWidth = 120.0,
    //
    this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.disabledStyle,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.inputFormatters,
    this.isDigitsOnly = false,
    this.allowedInputPattern,
    this.deniedInputPattern,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.undoController,
    this.cursorOpacityAnimates,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.dragStartBehavior = DragStartBehavior.start,
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.scribbleEnabled = true,
    this.canRequestFocus = true,
  });

  FieldifyStyle copyWith({
    bool? isRequired,
    AsteriskPosition? asteriskPosition,
    LabelBehavior? labelBehavior,
    TextStyle? labelStyle,
    int? labelMaxLines,
    double? labelGap,
    EdgeInsetsGeometry? labelPadding,
    TextStyle? errorStyle,
    int? errorMaxLines,
    double? errorGap,
    EdgeInsetsGeometry? errorPadding,
    double? prefixIconSize,
    EdgeInsetsGeometry? prefixIconPadding,
    double? suffixIconSize,
    EdgeInsetsGeometry? suffixIconPadding,
    double? minHeight,
    double? minWidth,
    //
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    TextStyle? style,
    TextStyle? disabledStyle,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    bool? isDigitsOnly,
    Pattern? allowedInputPattern,
    Pattern? deniedInputPattern,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    MouseCursor? mouseCursor,
    SpellCheckConfiguration? spellCheckConfiguration,
    TextMagnifierConfiguration? magnifierConfiguration,
    UndoHistoryController? undoController,
    bool? cursorOpacityAnimates,
    BoxHeightStyle? selectionHeightStyle,
    BoxWidthStyle? selectionWidthStyle,
    DragStartBehavior? dragStartBehavior,
    ContentInsertionConfiguration? contentInsertionConfiguration,
    Clip? clipBehavior,
    bool? scribbleEnabled,
    bool? canRequestFocus,
  }) {
    return FieldifyStyle(
      isRequired: isRequired ?? this.isRequired,
      asteriskPosition: asteriskPosition ?? this.asteriskPosition,
      labelBehavior: labelBehavior ?? this.labelBehavior,
      labelMaxLines: labelMaxLines ?? this.labelMaxLines,
      labelGap: labelGap ?? this.labelGap,
      labelPadding: labelPadding ?? this.labelPadding,
      errorGap: errorGap ?? this.errorGap,
      errorPadding: errorPadding ?? this.errorPadding,
      prefixIconSize: prefixIconSize ?? this.prefixIconSize,
      prefixIconPadding: prefixIconPadding ?? this.prefixIconPadding,
      suffixIconSize: suffixIconSize ?? this.suffixIconSize,
      suffixIconPadding: suffixIconPadding ?? this.suffixIconPadding,
      minHeight: minHeight ?? this.minHeight,
      minWidth: minWidth ?? this.minWidth,
      //
      focusNode: focusNode ?? this.focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      textInputAction: textInputAction ?? this.textInputAction,
      style: style ?? this.style,
      disabledStyle: disabledStyle ?? this.disabledStyle,
      strutStyle: strutStyle ?? this.strutStyle,
      textDirection: textDirection ?? this.textDirection,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      autofocus: autofocus ?? this.autofocus,
      readOnly: readOnly ?? this.readOnly,
      showCursor: showCursor ?? this.showCursor,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      isDigitsOnly: isDigitsOnly ?? this.isDigitsOnly,
      allowedInputPattern: allowedInputPattern ?? this.allowedInputPattern,
      deniedInputPattern: deniedInputPattern ?? this.deniedInputPattern,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      enableInteractiveSelection:
          enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls ?? this.selectionControls,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      autovalidateMode: autovalidateMode ?? this.autovalidateMode,
      scrollController: scrollController ?? this.scrollController,
      restorationId: restorationId ?? this.restorationId,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      spellCheckConfiguration:
          spellCheckConfiguration ?? this.spellCheckConfiguration,
      magnifierConfiguration:
          magnifierConfiguration ?? this.magnifierConfiguration,
      undoController: undoController ?? this.undoController,
      cursorOpacityAnimates:
          cursorOpacityAnimates ?? this.cursorOpacityAnimates,
      selectionHeightStyle: selectionHeightStyle ?? this.selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle ?? this.selectionWidthStyle,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      contentInsertionConfiguration:
          contentInsertionConfiguration ?? this.contentInsertionConfiguration,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      scribbleEnabled: scribbleEnabled ?? this.scribbleEnabled,
      canRequestFocus: canRequestFocus ?? this.canRequestFocus,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is FieldifyStyle &&
        other.isRequired == isRequired &&
        other.asteriskPosition == asteriskPosition &&
        other.labelBehavior == labelBehavior &&
        other.labelMaxLines == labelMaxLines &&
        other.labelGap == labelGap &&
        other.labelPadding == labelPadding &&
        other.errorGap == errorGap &&
        other.errorPadding == errorPadding &&
        other.prefixIconSize == prefixIconSize &&
        other.prefixIconPadding == prefixIconPadding &&
        other.suffixIconSize == suffixIconSize &&
        other.suffixIconPadding == suffixIconPadding &&
        other.minHeight == minHeight &&
        other.minWidth == minWidth &&
        //
        other.focusNode == focusNode &&
        other.decoration == decoration &&
        other.keyboardType == keyboardType &&
        other.textCapitalization == textCapitalization &&
        other.textInputAction == textInputAction &&
        other.style == style &&
        other.disabledStyle == disabledStyle &&
        other.strutStyle == strutStyle &&
        other.textDirection == textDirection &&
        other.textAlign == textAlign &&
        other.textAlignVertical == textAlignVertical &&
        other.autofocus == autofocus &&
        other.readOnly == readOnly &&
        other.showCursor == showCursor &&
        other.obscuringCharacter == obscuringCharacter &&
        other.obscureText == obscureText &&
        other.autocorrect == autocorrect &&
        other.smartDashesType == smartDashesType &&
        other.smartQuotesType == smartQuotesType &&
        other.enableSuggestions == enableSuggestions &&
        other.maxLengthEnforcement == maxLengthEnforcement &&
        other.maxLines == maxLines &&
        other.minLines == minLines &&
        other.expands == expands &&
        other.maxLength == maxLength &&
        listEquals(other.inputFormatters, inputFormatters) &&
        other.isDigitsOnly == isDigitsOnly &&
        other.allowedInputPattern == allowedInputPattern &&
        other.deniedInputPattern == deniedInputPattern &&
        other.enabled == enabled &&
        other.cursorWidth == cursorWidth &&
        other.cursorHeight == cursorHeight &&
        other.cursorRadius == cursorRadius &&
        other.cursorColor == cursorColor &&
        other.keyboardAppearance == keyboardAppearance &&
        other.scrollPadding == scrollPadding &&
        other.enableInteractiveSelection == enableInteractiveSelection &&
        other.selectionControls == selectionControls &&
        other.scrollPhysics == scrollPhysics &&
        other.autofillHints == autofillHints &&
        other.autovalidateMode == autovalidateMode &&
        other.scrollController == scrollController &&
        other.restorationId == restorationId &&
        other.enableIMEPersonalizedLearning == enableIMEPersonalizedLearning &&
        other.mouseCursor == mouseCursor &&
        other.spellCheckConfiguration == spellCheckConfiguration &&
        other.magnifierConfiguration == magnifierConfiguration &&
        other.undoController == undoController &&
        other.cursorOpacityAnimates == cursorOpacityAnimates &&
        other.selectionHeightStyle == selectionHeightStyle &&
        other.selectionWidthStyle == selectionWidthStyle &&
        other.dragStartBehavior == dragStartBehavior &&
        other.contentInsertionConfiguration == contentInsertionConfiguration &&
        other.clipBehavior == clipBehavior &&
        other.scribbleEnabled == scribbleEnabled &&
        other.canRequestFocus == canRequestFocus;
  }

  @override
  int get hashCode {
    return isRequired.hashCode ^
        asteriskPosition.hashCode ^
        labelBehavior.hashCode ^
        labelMaxLines.hashCode ^
        labelGap.hashCode ^
        labelPadding.hashCode ^
        errorGap.hashCode ^
        errorPadding.hashCode ^
        prefixIconSize.hashCode ^
        prefixIconPadding.hashCode ^
        suffixIconSize.hashCode ^
        suffixIconPadding.hashCode ^
        minHeight.hashCode ^
        minWidth.hashCode ^
        //
        focusNode.hashCode ^
        decoration.hashCode ^
        keyboardType.hashCode ^
        textCapitalization.hashCode ^
        textInputAction.hashCode ^
        style.hashCode ^
        disabledStyle.hashCode ^
        strutStyle.hashCode ^
        textDirection.hashCode ^
        textAlign.hashCode ^
        textAlignVertical.hashCode ^
        autofocus.hashCode ^
        readOnly.hashCode ^
        showCursor.hashCode ^
        obscuringCharacter.hashCode ^
        obscureText.hashCode ^
        autocorrect.hashCode ^
        smartDashesType.hashCode ^
        smartQuotesType.hashCode ^
        enableSuggestions.hashCode ^
        maxLengthEnforcement.hashCode ^
        maxLines.hashCode ^
        minLines.hashCode ^
        expands.hashCode ^
        maxLength.hashCode ^
        inputFormatters.hashCode ^
        isDigitsOnly.hashCode ^
        allowedInputPattern.hashCode ^
        deniedInputPattern.hashCode ^
        enabled.hashCode ^
        cursorWidth.hashCode ^
        cursorHeight.hashCode ^
        cursorRadius.hashCode ^
        cursorColor.hashCode ^
        keyboardAppearance.hashCode ^
        scrollPadding.hashCode ^
        enableInteractiveSelection.hashCode ^
        selectionControls.hashCode ^
        scrollPhysics.hashCode ^
        autofillHints.hashCode ^
        autovalidateMode.hashCode ^
        scrollController.hashCode ^
        restorationId.hashCode ^
        enableIMEPersonalizedLearning.hashCode ^
        mouseCursor.hashCode ^
        spellCheckConfiguration.hashCode ^
        magnifierConfiguration.hashCode ^
        undoController.hashCode ^
        cursorOpacityAnimates.hashCode ^
        selectionHeightStyle.hashCode ^
        selectionWidthStyle.hashCode ^
        dragStartBehavior.hashCode ^
        contentInsertionConfiguration.hashCode ^
        clipBehavior.hashCode ^
        scribbleEnabled.hashCode ^
        canRequestFocus.hashCode;
  }
}
