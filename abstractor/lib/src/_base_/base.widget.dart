part of '../base.imports.dart';

/// Abstractor widget that enables you to create many different use-cases for a widget
///
/// e.g. [Text], [Image], [ElevatedButton], [IconButton], etc
///
/// ```dart
/// class IconButtonUC extends Abstractor {
///    const IconButtonUC.arrow({super.key}): super(child: IconButton(icon: Icon(Icons.arrow_back)));
///    const IconButtonUC.close({super.key}): super(child: IconButton(icon: Icon(Icons.close)));
/// }
/// ```
///
/// ```dart
/// class IconButtonUC extends Abstractor {
///    const IconButtonUC.custom({super.key}): super.builder(builder: (context) => IconButton(icon: Icon(Icons.close)));
/// }
/// ```
abstract class Abstractor extends StatelessWidget {
  final Widget child;
  const Abstractor({super.key, required this.child});

  Abstractor.builder({super.key, required WidgetBuilder builder})
      : child = Builder(builder: builder);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

//! V 1.0.0
/* abstract class Abstractor extends StatelessWidget {
  final WidgetBuilder builder;
  Abstractor({super.key, required Widget child})
      : builder = ((context) => child);

  const Abstractor.builder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return builder(context);
  }
} */
