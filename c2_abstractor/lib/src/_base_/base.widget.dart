part of '../base.imports.dart';

/// Abstractor widget that enables you to create many different use-cases for a widget
///
/// e.g. [Text], [Image], [ElevatedButton], [IconButton], etc
///
/// ```dart
/// class IconButtonUC extends C2Abstractor {
///    const IconButtonUC.arrow({super.key}): super(IconButton(icon: Icon(Icons.arrow_back)));
///    const IconButtonUC.close({super.key}): super(IconButton(icon: Icon(Icons.close)));
/// }
/// ```
abstract class C2Abstractor extends StatelessWidget {
  final Widget child;
  const C2Abstractor({super.key, required this.child});

  C2Abstractor.builder({super.key, required WidgetBuilder builder})
      : child = Builder(builder: builder);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

//! V 1.0.0
/* abstract class C2Abstractor extends StatelessWidget {
  final WidgetBuilder builder;
  C2Abstractor({super.key, required Widget child})
      : builder = ((context) => child);

  const C2Abstractor.builder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return builder(context);
  }
} */
