// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The log is written nowhere
@immutable
class LogStreamEmpty extends LogStream {
  const LogStreamEmpty();

  static const String constructor = 'logStreamEmpty';

  static LogStreamEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamEmpty();
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
      (other.runtimeType == runtimeType && other is LogStreamEmpty);

  @override
  int get hashCode => runtimeType.hashCode;
}
