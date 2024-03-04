part of '../base.imports.dart';

extension NavigationConversion on BuildContext {
  bool get isFirstRoute => ModalRoute.of(this)?.isFirst ?? false;

  void popDialog<T extends Object?>([T? result]) =>
      Navigator.of(this).pop(true);
  void closeLoader<T extends Object?>([T? result]) =>
      Navigator.of(this).pop(true);

  //! General
  Future<T?> refreshCurrentPage<T extends Object?, TO extends Object?>(
    Widget currentPage,
  ) =>
      Navigator.pushReplacement(
        this,
        MaterialPageRoute(builder: (BuildContext context) => currentPage),
      );

  //! Pops
  void popRoute<T extends Object?>({bool rootNavigator = false, T? result}) =>
      Navigator.of(this, rootNavigator: rootNavigator).pop(result);

  void popRouteUntilFirst<T extends Object?>() =>
      Navigator.of(this).popUntil((route) => route.isFirst);

  void popRouteUntilSpecifiedCount<T extends Object?>({
    required int count,
  }) {
    int localCount = 0;
    // if 0 > 0 == false, then pop | else, then not pop
    return Navigator.of(this).popUntil((_) => localCount++ >= count);
  }

  //! Pushs
  Future<T?> pushNamedRoute<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  Future<T?> replaceRouteByNamedRoute<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) =>
      Navigator.of(this).pushReplacementNamed(
        routeName,
        result: result,
        arguments: arguments,
      );

  Future<T?> pushNamedRouteAndRemoveOthers<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        (route) => false,
        arguments: arguments,
      );

  Future<T?> pushNamedRouteAndRemoveUntil<T extends Object?>(
    String routeName, {
    required bool Function(Route<dynamic>) removeUntil,
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        removeUntil,
        arguments: arguments,
      );

  Future<T?> pushNamedRouteAndRemoveUntilSpecifiedCount<T extends Object?>(
    String routeName, {
    required int count,
    Object? arguments,
  }) {
    // if 0 > 0 == false, then pop | else, then not pop
    int localCount = 0;
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (_) => localCount++ >= count,
      arguments: arguments,
    );
  }

  Future<T?> pushNamedRouteAndRemoveUntilSpecifiedName<T extends Object?>(
    String routeName, {
    required String name,
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        (route) => route.settings.name == name,
        arguments: arguments,
      );

  Future<T?> pushNamedRouteAndRemoveUntilFirst<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        (route) => route.isFirst,
        arguments: arguments,
      );
}
