// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns current verbosity level for a specified TDLib internal log tag.
/// Can be called synchronously
/// Returns [LogVerbosityLevel]
@immutable
class GetLogTagVerbosityLevel extends TdFunction {
  const GetLogTagVerbosityLevel({
    required this.tag,
  });

  /// [tag] Logging tag to change verbosity level
  final String tag;

  static const String constructor = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLogTagVerbosityLevel &&
          const DeepCollectionEquality().equals(other.tag, tag));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(tag)]);
}
