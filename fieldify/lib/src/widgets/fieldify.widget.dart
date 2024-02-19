part of '../base.imports.dart';

class FieldifyWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final FieldifyStyle style;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onDisabled;
  final VoidCallback? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  // Default: close keyboard and unfocus TextFormField
  final void Function(PointerDownEvent)? onTapOutside;
  final BuildCounter? buildCounter;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  const FieldifyWidget({
    super.key,
    this.controller,
    this.initialValue,
    this.style = const FieldifyStyle(),
    this.onChanged,
    this.onTap,
    this.onDisabled,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.onTapOutside,
    this.buildCounter,
    this.contextMenuBuilder,
    this.onAppPrivateCommand,
  });

  @override
  State<FieldifyWidget> createState() => _FieldifyWidgetState();
}

class _FieldifyWidgetState extends State<FieldifyWidget> {
  @override
  Widget build(BuildContext context) {
    return Widgey.labelWithError(
      isRequired: widget.style.isRequired,
      asteriskPosition: widget.style.asteriskPosition,
      label: switch (widget.style.labelBehavior) {
        LabelBehavior.above => widget.style.decoration?.label,
        _ => null,
      },
      labelText: switch (widget.style.labelBehavior) {
        LabelBehavior.above => widget.style.decoration?.labelText,
        _ => null,
      },
      labelStyle: widget.style.decoration?.labelStyle ??
          Theme.of(context).inputDecorationTheme.labelStyle,
      labelGap: widget.style.labelGap,
      labelMaxLines: widget.style.labelMaxLines,
      labelPadding: widget.style.labelPadding,
      error: widget.style.decoration?.error,
      errorText: widget.style.decoration?.errorText,
      errorStyle: widget.style.decoration?.errorStyle ??
          Theme.of(context).inputDecorationTheme.errorStyle,
      errorGap: widget.style.errorGap,
      errorMaxLines: widget.style.decoration?.errorMaxLines ??
          Theme.of(context).inputDecorationTheme.errorMaxLines,
      errorPadding: widget.style.errorPadding,
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.initialValue,
        //
        focusNode: widget.style.focusNode,
        decoration: widget.style.decoration?.copyWith(
          constraints: constraints,
          labelText: switch (widget.style.labelBehavior) {
            LabelBehavior.above => labelText,
            _ => null,
          },
          label: switch (widget.style.labelBehavior) {
            LabelBehavior.above => label,
            _ => null,
          },
          floatingLabelBehavior: switch (widget.style.labelBehavior) {
            // to make sure that the hint will always be visible inside the field
            LabelBehavior.above => FloatingLabelBehavior.always,
            _ => null,
          },
          errorText: errorText,
          error: error,
          // 0.0: center, 1.0: centerEnd, -1.0: centerStart
          // 1.0 centerEnd / prefix extra space to move widget to actual alignment without losing padding or icon size
          prefixIcon: widget.style.decoration?.prefixIcon,
          // content padding + size of prefix-icon + prefix extra space
          prefixIconConstraints: widget.style.decoration?.prefixIcon != null
              ? prefixIconConstraints
              : null,
          // 0.0: center, 1.0: centerEnd, -1.0: centerStart
          // -1.0 centerStart / suffix extra space to move widget to actual alignment without losing padding or icon size
          suffixIcon: widget.style.decoration?.suffixIcon,
          // content padding + size of suffix-icon + suffix extra space
          suffixIconConstraints: widget.style.decoration?.suffixIcon != null
              ? suffixIconConstraints
              : null,
        ),
        keyboardType: widget.style.keyboardType,
        textCapitalization: widget.style.textCapitalization,
        textInputAction: widget.style.textInputAction,
        style: isDisabled ? widget.style.disabledStyle : widget.style.style,
        strutStyle: widget.style.strutStyle,
        textDirection: widget.style.textDirection,
        textAlign: widget.style.textAlign,
        textAlignVertical: widget.style.textAlignVertical,
        autofocus: widget.style.autofocus,
        readOnly: widget.style.readOnly,
        showCursor: widget.style.showCursor,
        obscuringCharacter: widget.style.obscuringCharacter,
        obscureText: widget.style.obscureText,
        autocorrect: widget.style.autocorrect,
        smartDashesType: widget.style.smartDashesType,
        smartQuotesType: widget.style.smartQuotesType,
        enableSuggestions: widget.style.enableSuggestions,
        maxLengthEnforcement: widget.style.maxLengthEnforcement,
        maxLines: widget.style.maxLines,
        minLines: widget.style.minLines,
        expands: widget.style.expands,
        maxLength: widget.style.maxLength,
        inputFormatters: inputFormatters,
        enabled: widget.style.enabled,
        cursorWidth: widget.style.cursorWidth,
        cursorHeight: widget.style.cursorHeight,
        cursorRadius: widget.style.cursorRadius,
        cursorColor: widget.style.cursorColor,
        keyboardAppearance: widget.style.keyboardAppearance,
        scrollPadding: widget.style.scrollPadding,
        enableInteractiveSelection: widget.style.enableInteractiveSelection,
        selectionControls: widget.style.selectionControls,
        scrollPhysics: widget.style.scrollPhysics,
        autofillHints: widget.style.autofillHints,
        autovalidateMode: widget.style.autovalidateMode,
        scrollController: widget.style.scrollController,
        restorationId: widget.style.restorationId,
        enableIMEPersonalizedLearning:
            widget.style.enableIMEPersonalizedLearning,
        mouseCursor: widget.style.mouseCursor,
        spellCheckConfiguration: widget.style.spellCheckConfiguration,
        magnifierConfiguration: widget.style.magnifierConfiguration,
        undoController: widget.style.undoController,
        cursorOpacityAnimates: widget.style.cursorOpacityAnimates,
        selectionHeightStyle: widget.style.selectionHeightStyle,
        selectionWidthStyle: widget.style.selectionWidthStyle,
        dragStartBehavior: widget.style.dragStartBehavior,
        contentInsertionConfiguration:
            widget.style.contentInsertionConfiguration,
        clipBehavior: widget.style.clipBehavior,
        scribbleEnabled: widget.style.scribbleEnabled,
        canRequestFocus: widget.style.canRequestFocus,
        //
        buildCounter: widget.buildCounter,
        contextMenuBuilder: widget.contextMenuBuilder,
        onChanged: widget.onChanged,
        onTap: isDisabled ? widget.onDisabled : widget.onTap,
        onEditingComplete: widget.onEditingComplete,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onTapOutside: widget.onTapOutside ?? _onTapOutside,
        onAppPrivateCommand: widget.onAppPrivateCommand,
      ),
    );
  }

  bool get isDisabled => widget.style.readOnly || widget.style.enabled == false;

  String? get labelText =>
      widget.style.decoration?.labelText != null ? '' : null;

  Widget? get label =>
      widget.style.decoration?.label != null ? const SizedBox.shrink() : null;

  String? get errorText =>
      widget.style.decoration?.errorText != null ? '' : null;

  Widget? get error =>
      widget.style.decoration?.error != null ? const SizedBox.shrink() : null;

  List<TextInputFormatter> get inputFormatters =>
      widget.style.inputFormatters ??
      [
        if (widget.style.isDigitsOnly) FilteringTextInputFormatter.digitsOnly,
        if (widget.style.allowedInputPattern != null)
          FilteringTextInputFormatter.allow(widget.style.allowedInputPattern!),
        if (widget.style.deniedInputPattern != null)
          FilteringTextInputFormatter.deny(widget.style.deniedInputPattern!),
      ];

  BoxConstraints get constraints =>
      widget.style.decoration?.constraints ??
      Theme.of(context).inputDecorationTheme.constraints ??
      BoxConstraints(
        minHeight: widget.style.minHeight,
        minWidth: widget.style.minWidth,
      );

  EdgeInsetsGeometry get prefixIconPadding =>
      widget.style.prefixIconPadding ?? EdgeInsets.zero;
  EdgeInsetsGeometry get suffixIconPadding =>
      widget.style.suffixIconPadding ?? EdgeInsets.zero;

  double get defaultIconSize => Theme.of(context).iconTheme.size ?? 24.0;
  double get prefixIconSize => widget.style.prefixIconSize ?? defaultIconSize;
  double get suffixIconSize => widget.style.suffixIconSize ?? defaultIconSize;
  double get prefixIconWidth => prefixIconPadding.horizontal + prefixIconSize;
  double get suffixIconWidth => suffixIconPadding.horizontal + suffixIconSize;

  Size get prefixSize => Size(prefixIconWidth, constraints.minHeight);
  Size get suffixSize => Size(suffixIconWidth, constraints.minHeight);

  BoxConstraints get prefixIconConstraints =>
      widget.style.decoration?.prefixIconConstraints ??
      BoxConstraints.tight(prefixSize);
  BoxConstraints get suffixIconConstraints =>
      widget.style.decoration?.suffixIconConstraints ??
      BoxConstraints.tight(suffixSize);

  void _onTapOutside(PointerDownEvent event) =>
      FocusManager.instance.primaryFocus?.unfocus();
}


/*

readOnly:

Purpose: Controls whether the user can modify the content of the text field.

Behavior:
If true: User can still focus, select, and copy the text, but typing and pasting new content is disabled.
If false: User can freely edit the text content.

Use cases:
Displaying pre-filled information not meant to be changed.
Showing data for read-only reference.
Implementing password visibility toggles (hidden password is read-only).

enabled:

Purpose: Controls whether the user can interact with the text field at all.

Behavior:
If true: User can focus, select, edit, and interact with the field normally.
If false: Text field becomes greyed out and loses all interactivity.

Use cases:
Disabling fields in specific conditions (e.g., during processing).
Implementing conditional editability based on other field values.
Preventing accidental input in certain scenarios.

Key differences:

readOnly only restricts editing the text, while enabled affects all interactions.
readOnly keeps content visible, while enabled can visually indicate disabled state.
Choosing the right one:

Use readOnly if you want users to see and interact with the field but not change its content directly. Use enabled if you want to completely block interaction with the field in specific situations.

*/