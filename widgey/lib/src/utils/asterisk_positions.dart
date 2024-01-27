part of '../base.imports.dart';

enum AsteriskPosition {
  start,
  end,
  ;

  bool get isStart => this == AsteriskPosition.start;
  bool get isEnd => this == AsteriskPosition.end;
}
