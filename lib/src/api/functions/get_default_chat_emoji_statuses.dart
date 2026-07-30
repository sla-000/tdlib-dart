// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default emoji statuses for chats
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetDefaultChatEmojiStatuses extends TdFunction {
  const GetDefaultChatEmojiStatuses();

  static const String constructor = 'getDefaultChatEmojiStatuses';

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
          other is GetDefaultChatEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
