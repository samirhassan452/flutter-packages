part of '../base.imports.dart';

extension JsonConversion<T extends Object, E> on T {
  /// Convert json string to specific data
  E fromJson() {
    try {
      return json.decode(this as String);
    } catch (e) {
      throw ArgumentError(
        'Cannot decode from String {fromJson} method: $e',
      );
    }
  }

  Map<String, dynamic> fromJsonToMap() {
    try {
      return json.decode(this as String);
    } catch (e) {
      throw ArgumentError(
        'Cannot decode from String to Map {fromJsonToMap} method: $e',
      );
    }
  }

  /// Convert data to json string
  String toJson() {
    try {
      return json.encode(this);
    } catch (e) {
      throw ArgumentError(
        'Cannot encode to String {toJson} method: $e',
      );
    }
  }
}
