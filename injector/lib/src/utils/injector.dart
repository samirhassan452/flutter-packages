part of '../base.imports.dart';

/// Injector
abstract class Injector {
  /// Used to register all possible values
  FutureOr<void> register();

  /// Used to unregister all registered values
  FutureOr<void> dispose();

  /// Used to check if registered values still registered or not before dispose
  bool get isRegistered;
}
