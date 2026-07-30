// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the topic in a channel direct messages chat
/// administered by the current user
/// Returns [DirectMessagesChatTopic]
@immutable
class GetDirectMessagesChatTopic extends TdFunction {
  const GetDirectMessagesChatTopic({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic to get
  final int topicId;

  static const String constructor = 'getDirectMessagesChatTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetDirectMessagesChatTopic &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId)
      ]);
}
