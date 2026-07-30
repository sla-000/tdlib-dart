// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A supergroup has been created from a basic group
@immutable
class MessageChatUpgradeFrom extends MessageContent {
  const MessageChatUpgradeFrom({
    required this.title,
    required this.basicGroupId,
  });

  /// [title] Title of the newly created supergroup
  final String title;

  /// [basicGroupId] The identifier of the original basic group
  final int basicGroupId;

  static const String constructor = 'messageChatUpgradeFrom';

  static MessageChatUpgradeFrom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeFrom(
      title: json['title'] as String,
      basicGroupId: json['basic_group_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'basic_group_id': basicGroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatUpgradeFrom &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.basicGroupId, basicGroupId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(basicGroupId)
      ]);
}
