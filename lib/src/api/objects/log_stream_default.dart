// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The log is written to stderr or an OS specific log
@immutable
class LogStreamDefault extends LogStream {
  const LogStreamDefault();

  static const String constructor = 'logStreamDefault';

  static LogStreamDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamDefault();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is LogStreamDefault);

  @override
  int get hashCode => runtimeType.hashCode;
}
