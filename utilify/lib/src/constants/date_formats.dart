part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UDateFormat {
  //? Private constructor
  UDateFormat._();

  static const String yyyyMMddDash = 'yyyy-MM-dd';
  static const String yyyyMMddSlash = 'yyyy/MM/dd';
  static const String yyyyMMddDot = 'yyyy.MM.dd';
  static const String yyyyMMddSlashHHmm = 'yyyy/MM/dd HH:mm';

  static const String ddMMyyyyDash = 'dd-MM-yyyy';
  static const String ddMMyyyySlash = 'dd/MM/yyyy';
  static const String ddMMyyyyDot = 'dd.MM.yyyy';
  static const String ddMMyyyySlashHHmm = 'dd/MM/yyyy HH:mm';

  static const String hhmm = 'HH:mm';
  static const String hhmmss = 'HH:mm:ss';

  static const String shortMonthddyyyy = "MMM dd, yyyy";
}
