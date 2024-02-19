part of '../base.imports.dart';

/// Injector
class InjectorProvider<T extends Injector> extends StatefulWidget {
  final T injector;
  final bool autoDispose;
  final Widget child;
  const InjectorProvider({
    super.key,
    required this.injector,
    this.autoDispose = true,
    required this.child,
  });

  @override
  State<InjectorProvider> createState() => _SLInjector();
}

class _SLInjector extends State<InjectorProvider> {
  @override
  void initState() {
    super.initState();
    _register();
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _register() {
    if (widget.injector.isRegistered == false) widget.injector.register();
    "${widget.injector.runtimeType} has been initialized"
        .hardcoded
        .successLog();
  }

  void _dispose() {
    if (widget.autoDispose) {
      /// SL can be resetted before disposing injector,
      /// so, added inside try to dispose it
      try {
        if (widget.injector.isRegistered) widget.injector.dispose();
        "${widget.injector.runtimeType} has been disposed".hardcoded.closeLog();
      } catch (_) {
        /// In case of already resetted, so don't dispose injector
        /// becuase it is already disposed when SL was being resetted
      }
    }
  }
}
