part of '../base.imports.dart';

/// use it insead of print() or debugPrint()
///
/// https://stackoverflow.com/questions/54018071/how-to-call-print-with-colorful-text-to-android-studio-console-in-flutter
extension Log<T> on T {
  void log([LogType? type]) {
    // devtools.log("\x1B[32m${toString()}\x1B[0m", name: LOG'');
    final emoji = type?.emoji ?? '';
    final prefix = type?.prefix ?? '\x1B[37m';
    final suffix = type?.suffix ?? '\x1B[0m';
    final name = type?.name ?? 'log';

    StringBuffer bufferLog = StringBuffer();
    (bufferLog).write(prefix);
    (bufferLog).write(toString());
    (bufferLog).write(suffix);
    devtools.log(bufferLog.toString(), name: _logName(name, emoji: emoji));
  }

  // Red
  void errorLog() => log(LogType.error);
  // Green
  void successLog() => log(LogType.success);
  // Yellow
  void warningLog() => log(LogType.warning);
  // Cyan
  void closeLog() => log(LogType.close);
  // Blue
  void actionLog() => log(LogType.action);
  // Cyan
  void infoLog() => log(LogType.info);
  // Magenta
  void importantLog() => log(LogType.important);
  // Light Blue
  void debugLog() => log(LogType.debug);
  // Dark Gray
  void neutralLog() => log(LogType.neutral);
  // Custom color (replace 200 with desired color code between 0 and 255)
  void customLog(Color color) {
    // Convert the Color object to RGB components
    int red = color.red;
    int green = color.green;
    int blue = color.blue;

    // Convert RGB components to ANSI color code
    String ansiColorCode = convertRgbToAnsiCode(red, green, blue);

    // devtools.log("🌈: \x1B[38;5;200m${toString()}\x1B[0m");
    devtools.log(
      "$ansiColorCode${toString()}\x1B[0m",
      name: _logName('custom', emoji: '🌈'),
    );
  }
  // void successLog() => devtools.log("✅: ${toString()}");
  // void closeLog() => devtools.log("❎: ${toString()}");
  // void warningLog() => devtools.log("🟡: ${toString()}");
  // void errorLog() => devtools.log("🛑: ${toString()}");
  // void actionLog() => devtools.log("🔵: ${toString()}");

  String convertRgbToAnsiCode(int red, int green, int blue) {
    // Calculate the ANSI color code based on RGB components
    int ansiColorCode =
        16 + (36 * (red ~/ 51)) + (6 * (green ~/ 51)) + (blue ~/ 51);

    // Return the ANSI color code as a string
    return '\x1B[38;5;${ansiColorCode}m';
  }

  String _logName(String name, {String emoji = ''}) {
    StringBuffer bufferName = StringBuffer();
    (bufferName).write('\x1B[37m');
    (bufferName).write(emoji);
    (bufferName).write(" ${name.toUpperCase()} ");
    (bufferName).write(emoji);
    (bufferName).write('\x1B[0m');
    return bufferName.toString();
  }
}
