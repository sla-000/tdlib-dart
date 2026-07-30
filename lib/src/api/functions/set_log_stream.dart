// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets new log stream for internal logging of TDLib. Can be called
/// synchronously
/// Returns [Ok]
@immutable
class SetLogStream extends TdFunction {
  const SetLogStream({
    required this.logStream,
  });

  /// [logStream] New log stream
  final LogStream logStream;

  static const String constructor = 'setLogStream';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'log_stream': logStream.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetLogStream &&
          const DeepCollectionEquality().equals(other.logStream, logStream));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(logStream)]);
}
