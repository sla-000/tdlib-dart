// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default emoji statuses for self status
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetDefaultEmojiStatuses extends TdFunction {
  const GetDefaultEmojiStatuses();

  static const String constructor = 'getDefaultEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetDefaultEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
