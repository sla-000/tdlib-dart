// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears the list of recently used emoji statuses for self status
/// Returns [Ok]
@immutable
class ClearRecentEmojiStatuses extends TdFunction {
  const ClearRecentEmojiStatuses();

  static const String constructor = 'clearRecentEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ClearRecentEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
