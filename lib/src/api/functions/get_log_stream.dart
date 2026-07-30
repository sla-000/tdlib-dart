// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about currently used log stream for internal logging
/// of TDLib. Can be called synchronously
/// Returns [LogStream]
@immutable
class GetLogStream extends TdFunction {
  const GetLogStream();

  static const String constructor = 'getLogStream';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetLogStream);

  @override
  int get hashCode => runtimeType.hashCode;
}
