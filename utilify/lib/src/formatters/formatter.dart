part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UFormatter {
  UFormatter._();

  static String date(
    DateTime date, {
    String format = UDateFormat.ddMMyyyySlash,
    String? locale,
  }) {
    try {
      return DateFormat(format, locale).format(date);
    } on FormatException catch (e) {
      throw FormatException(
        'Format Exception occurred {UFormatter.date()} method: $e',
      );
    }
  }

  static String timeAgo(
    DateTime date, {
    String? locale,
    DateTime? clock,
    bool allowFromNow = false,
  }) {
    // timeago.setLocaleMessages('ar', TimeagoMessagesAR());
    return timeago.format(
      date,
      locale: locale,
      clock: clock,
      allowFromNow: allowFromNow,
    );
  }

  static String currency(
    double amount, {
    String? locale,
    String? name,
    String symbol = "\$",
    int? decimalDigits,
    String? customPattern,
  }) {
    try {
      return NumberFormat.currency(
        locale: locale,
        name: name,
        symbol: symbol,
        decimalDigits: decimalDigits,
        customPattern: customPattern,
      ).format(amount);
    } on FormatException catch (e) {
      throw FormatException(
        'Format Exception occurred {UFormatter.currency()} method: $e',
      );
    }
  }

  static String number(
    num number, {
    String? format,
    String? locale,
  }) {
    try {
      return NumberFormat(format, locale).format(number);
    } on FormatException catch (e) {
      throw FormatException(
        'Format Exception occurred {UFormatter.number()} method: $e',
      );
    }
  }

  static String phoneNumber(String phoneNumber) {
    // Assuming a 10-digits US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      phoneNumber =
          '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6, 10)}';
    } else if (phoneNumber.length == 11) {
      phoneNumber =
          '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7, 11)}';
    }
    return phoneNumber;
  }

  static String internationalPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    // Extract the country code from the digitsOnly
    String countryCode = "+${digitsOnly.substring(0, 2)}";
    digitsOnly = digitsOnly.substring(2);
    // Add the remaining digits with the proper formatting
    final StringBuffer formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int index = 0;
    while (index < digitsOnly.length) {
      int groupLength = 2;
      if (index == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = index + groupLength;
      formattedNumber.write(digitsOnly.substring(index, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      index = end;
    }

    return formattedNumber.toString();
  }
}
