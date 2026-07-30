// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An updated chat title
@immutable
class MessageChatChangeTitle extends MessageContent {
  const MessageChatChangeTitle({
    required this.title,
  });

  /// [title] New chat title
  final String title;

  static const String constructor = 'messageChatChangeTitle';

  static MessageChatChangeTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangeTitle(
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatChangeTitle &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(title)]);
}
