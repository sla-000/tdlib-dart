// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns up to 8 emoji statuses, which must be shown in the emoji status
/// list for chats
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetThemedChatEmojiStatuses extends TdFunction {
  const GetThemedChatEmojiStatuses();

  static const String constructor = 'getThemedChatEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetThemedChatEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
