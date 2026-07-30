// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns recent emoji statuses for self status
/// Returns [EmojiStatuses]
@immutable
class GetRecentEmojiStatuses extends TdFunction {
  const GetRecentEmojiStatuses();

  static const String constructor = 'getRecentEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetRecentEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
