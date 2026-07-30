// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of emoji statuses, which can't be used as chat emoji
/// status, even if they are from a sticker set with
/// is_allowed_as_chat_emoji_status == true
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetDisallowedChatEmojiStatuses extends TdFunction {
  const GetDisallowedChatEmojiStatuses();

  static const String constructor = 'getDisallowedChatEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetDisallowedChatEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
