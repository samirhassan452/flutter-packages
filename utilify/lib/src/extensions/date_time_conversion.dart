part of '../base.imports.dart';

extension DateTimeConversion on DateTime {
  bool isSameDate(DateTime date, [ignoreTime = true]) => switch (this) {
        (DateTime _) when ignoreTime =>
          year == date.year && month == date.month && day == date.day,
        _ => year == date.year &&
            month == date.month &&
            day == date.day &&
            hour == date.hour &&
            minute == date.minute &&
            second == date.second,
      };

  DateTime onlyDate() => DateTime(year, month, day);
  DateTime lastDayOfYear() => DateTime(year + 1, 1, 0);
  DateTime nextYear() => DateTime(year + 2, 1, 0);
}

///
extension NullableDateTimeConversion on DateTime? {
  /// Return DateTime.now() if the DateTime is null
  DateTime get orNow => this ?? DateTime.now();

  DateTime emptyIfNull() => switch (this) {
        (DateTime? val) when val == null => DateTime(0001),
        _ => this!,
      };

  bool get isEmpty => this != null && this!.year == 0001;
  bool get isNotEmpty => isEmpty == false;
  bool get isNullOrEmpty => this == null || isEmpty;

  /// Format date
  String toDateFormat({String format = UDateFormat.ddMMyyyySlash}) =>
      UFormatter.formatDate(this, format: format);
}

///
extension NullableDateTimeRangeConversion on DateTimeRange? {
  DateTimeRange emptyIfNull() => switch (this) {
        (DateTimeRange? val) when val == null =>
          DateTimeRange(start: DateTime(0001), end: DateTime(0001)),
        _ => this!,
      };

  bool get isEmpty =>
      this != null && this!.start.year == 0001 && this!.end.year == 0001;
  bool get isNotEmpty => isEmpty == false;
  bool get isNullOrEmpty => this == null || isEmpty;
}
