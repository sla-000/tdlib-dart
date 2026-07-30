// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a stream to which TDLib internal log is written
@immutable
abstract class LogStream extends TdObject {
  const LogStream();

  static const String constructor = 'logStream';

  /// Inherited by:
  /// [LogStreamDefault]
  /// [LogStreamEmpty]
  /// [LogStreamFile]
  static LogStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LogStreamDefault.constructor:
        return LogStreamDefault.fromJson(json);
      case LogStreamEmpty.constructor:
        return LogStreamEmpty.fromJson(json);
      case LogStreamFile.constructor:
        return LogStreamFile.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is LogStream);

  @override
  int get hashCode => runtimeType.hashCode;
}
