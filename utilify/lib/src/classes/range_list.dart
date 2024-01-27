part of '../base.imports.dart';

class RangeList<T extends num> {
  final List<T> _list = [];
  final num _minValue;
  final num _maxValue;

  RangeList({required num min, required num max})
      : assert(min < max, 'Min must be less than Max'),
        assert(min != max, 'Min cannot be equal with Max'),
        _minValue = min,
        _maxValue = max;

  void add(T value) {
    if (_isValidValue(value)) {
      _list.add(value);
    } else {
      throw RangeError.range(
        value,
        _minValue.toInt(),
        _maxValue.toInt(),
        'Value must be in the range of $_minValue to $_maxValue',
      );
    }
  }

  void clear() {
    _list.clear();
  }

  T operator [](int index) => _list[index];

  bool get isEmpty => _list.isEmpty;
  bool get isNotEmpty => _list.isNotEmpty;

  bool _isValidValue(T value) {
    if (value is int) {
      return value >= _minValue && value <= _maxValue;
    }
    return false;
  }

  void operator []=(int index, T value) {
    if (_isValidValue(value)) {
      _list[index] = value;
    } else {
      throw RangeError.range(
        value,
        _minValue.toInt(),
        _maxValue.toInt(),
        'Value must be in the range of $_minValue to $_maxValue',
      );
    }
  }

  int get length => _list.length;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RangeList<T> &&
        other._minValue == _minValue &&
        other._maxValue == _maxValue &&
        // Using listEquals from 'dart:collection'
        listEquals(other._list, _list);
  }

  @override
  int get hashCode => _list.hashCode ^ _minValue.hashCode ^ _maxValue.hashCode;
}
