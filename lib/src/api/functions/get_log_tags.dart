// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of available TDLib internal log tags, for example,
/// ["actor", "binlog", "connections", "notifications", "proxy"]. Can be
/// called synchronously
/// Returns [LogTags]
@immutable
class GetLogTags extends TdFunction {
  const GetLogTags();

  static const String constructor = 'getLogTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetLogTags);

  @override
  int get hashCode => runtimeType.hashCode;
}
