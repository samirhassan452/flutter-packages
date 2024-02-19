part of '../base.imports.dart';

class Fieldify extends Abstractor {
  Fieldify({
    super.key,
    TextEditingController? controller,
    String? initialValue,
    FieldifyStyle style = const FieldifyStyle(),
    void Function(String)? onChanged,
    VoidCallback? onTap,
    VoidCallback? onDisabled,
    VoidCallback? onEditingComplete,
    void Function(String)? onFieldSubmitted,
    void Function(String?)? onSaved,
    String? Function(String?)? validator,
    // Default: close keyboard and unfocus TextFormField
    void Function(PointerDownEvent)? onTapOutside,
    BuildCounter? buildCounter,
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
    void Function(String, Map<String, dynamic>)? onAppPrivateCommand,
  }) : super(
          child: FieldifyWidget(
            key: key,
            controller: controller,
            initialValue: initialValue,
            style: style,
            onChanged: onChanged,
            onTap: onTap,
            onDisabled: onDisabled,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            validator: validator,
            onTapOutside: onTapOutside,
            buildCounter: buildCounter,
            contextMenuBuilder: contextMenuBuilder,
            onAppPrivateCommand: onAppPrivateCommand,
          ),
        );

  ///
  Fieldify.readOnly({
    super.key,
    TextEditingController? controller,
    String? initialValue,
    FieldifyStyle style = const FieldifyStyle(),
    VoidCallback? onDisabled,
  }) : super(
          child: FieldifyWidget(
            key: key,
            controller: controller,
            initialValue: initialValue,
            style: style.copyWith(enabled: false, readOnly: true),
            onDisabled: onDisabled,
          ),
        );
}
