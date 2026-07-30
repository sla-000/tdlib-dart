// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears the list of recently used reactions
/// Returns [Ok]
@immutable
class ClearRecentReactions extends TdFunction {
  const ClearRecentReactions();

  static const String constructor = 'clearRecentReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ClearRecentReactions);

  @override
  int get hashCode => runtimeType.hashCode;
}
