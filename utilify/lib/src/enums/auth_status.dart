part of '../base.imports.dart';

enum AuthStatus {
  initial,

  /// loading till know if user is authorized or not
  checking,
  authorized,
  unauthorized,

  loading,
  success,
  failure,
  ;

  bool get isInitial => this == AuthStatus.initial;

  bool get isChecking => this == AuthStatus.checking;
  bool get isAuthorized => this == AuthStatus.authorized;
  bool get isUnauthorized => this == AuthStatus.unauthorized;

  bool get isLoading => this == AuthStatus.loading;
  bool get isSuccess => this == AuthStatus.success;
  bool get isFailure => this == AuthStatus.failure;
}
