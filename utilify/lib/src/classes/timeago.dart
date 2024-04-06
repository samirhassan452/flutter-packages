part of '../base.imports.dart';

//! U: Utilify
class UTimeago {
  static String format(
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

  static void setLocaleMessages(
    String locale,
    timeago.LookupMessages lookupMessages,
  ) =>
      timeago.setLocaleMessages(locale, lookupMessages);

  static void setDefaultLocale(String locale) =>
      timeago.setDefaultLocale(locale);
}

/// Custom timeago messages
///
/// Check the following for the list of ISO 639-1 language codes
/// https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
class TimeagoMessages {
  static timeago.LookupMessages ar() => TimeagoMessagesAR();
  static timeago.LookupMessages fr() => TimeagoMessagesFR();
}

/// Custom timeago AR messages
class TimeagoMessagesAR implements timeago.LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'مضت';
  @override
  String suffixFromNow() => 'من الآن';
  @override
  String lessThanOneMinute(int seconds) => 'لحظة';
  @override
  String aboutAMinute(int minutes) => 'دقيقة';
  @override
  String minutes(int minutes) => '$minutes دقائق';
  @override
  String aboutAnHour(int minutes) => 'حوالي ساعة';
  @override
  String hours(int hours) => '$hours ساعات';
  @override
  String aDay(int hours) => 'يوم';
  @override
  String days(int days) => '$days أيام';
  @override
  String aboutAMonth(int days) => 'حوالي شهر';
  @override
  String months(int months) => '$months أشهر';
  @override
  String aboutAYear(int year) => 'حوالي سنة';
  @override
  String years(int years) => '$years سنوات';
  @override
  String wordSeparator() => ' ';
}

/// Custom timeago FR messages
class TimeagoMessagesFR extends timeago.LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'à l\'instant';
  @override
  String suffixFromNow() => 'dans';
  @override
  String lessThanOneMinute(int seconds) => 'moins d\'une minute';
  @override
  String aboutAMinute(int minutes) => 'd\'une minute';
  @override
  String minutes(int minutes) => '$minutes minutes';
  @override
  String aboutAnHour(int minutes) => 'd\'une heure';
  @override
  String hours(int hours) => '$hours heures';
  @override
  String aDay(int hours) => 'un jour';
  @override
  String days(int days) => '$days jours';
  @override
  String aboutAMonth(int days) => 'd\'un mois';
  @override
  String months(int months) => '$months mois';
  @override
  String aboutAYear(int year) => 'd\'un an';
  @override
  String years(int years) => '$years ans';
  @override
  String wordSeparator() => ' ';
}
