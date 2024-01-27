part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UDuration {
  //? Private constructor
  UDuration._();

  // General Duration
  static const Duration xsmallDuration = Duration(milliseconds: 100);
  static const Duration smallDuration = Duration(milliseconds: 300);
  static const Duration mediumDuration = Duration(milliseconds: 500);
  static const Duration semiLargeDuration = Duration(milliseconds: 700);
  static const Duration largeDuration = Duration(milliseconds: 1000);
  static const Duration xlargeDuration = Duration(milliseconds: 1500);

  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration searchDuration = Duration(milliseconds: 1000);
}
