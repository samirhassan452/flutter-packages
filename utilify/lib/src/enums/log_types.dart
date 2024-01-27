part of '../base.imports.dart';

enum LogType {
  error(emoji: '🛑', prefix: '\x1B[31m', suffix: '\x1B[0m'),
  success(emoji: '✅', prefix: '\x1B[32m', suffix: '\x1B[0m'),
  warning(emoji: '🟡', prefix: '\x1B[33m', suffix: '\x1B[0m'),
  action(emoji: '🔵', prefix: '\x1B[34m', suffix: '\x1B[0m'),
  important(emoji: '‼️', prefix: '\x1B[35m', suffix: '\x1B[0m'),
  close(emoji: '❌', prefix: '\x1B[36m', suffix: '\x1B[0m'),
  info(emoji: 'ℹ️', prefix: '\x1B[36m', suffix: '\x1B[0m'),
  debug(emoji: '🐞', prefix: '\x1B[94m', suffix: '\x1B[0m'),
  neutral(emoji: '🔘', prefix: '\x1B[90m', suffix: '\x1B[0m'),
  ;

  const LogType({
    this.emoji,
    required this.prefix,
    required this.suffix,
  });
  final String? emoji;
  final String prefix;
  final String suffix;
}
