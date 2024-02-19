part of '../base.imports.dart';

/*
assert(condition, [message]);
if condition is true, then nothing happens. 
Otherwise, an AssertionError is thrown.
*/

/// MultiInjectors
class MultiInjectorProvider<T extends Injector> extends StatefulWidget {
  final Set<T> injectors;
  final bool autoDispose;
  final Widget child;
  const MultiInjectorProvider({
    super.key,
    required this.injectors,
    this.autoDispose = true,
    required this.child,
  });

  @override
  State<MultiInjectorProvider> createState() => _MultiInjectorProviderState();
}

class _MultiInjectorProviderState extends State<MultiInjectorProvider> {
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
    for (var injector in widget.injectors) {
      if (injector.isRegistered == false) injector.register();
      "${injector.runtimeType} has been initialized".hardcoded.successLog();
    }
  }

  void _dispose() {
    if (widget.autoDispose) {
      /// SL can be resetted before disposing injector,
      /// so, added inside try to dispose it
      try {
        for (var injector in widget.injectors) {
          if (injector.isRegistered) injector.dispose();
          "${injector.runtimeType} has been disposed".hardcoded.closeLog();
        }
      } catch (_) {
        /// In case of already resetted, so don't dispose injector
        /// becuase it is already disposed when SL was being resetted
      }
    }
  }
}
