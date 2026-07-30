// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat was added to a community
@immutable
class MessageChatAddedToCommunity extends MessageContent {
  const MessageChatAddedToCommunity({
    required this.communityId,
  });

  /// [communityId] Identifier of the community to which the chat was added
  final int communityId;

  static const String constructor = 'messageChatAddedToCommunity';

  static MessageChatAddedToCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddedToCommunity(
      communityId: (json['community_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'community_id': communityId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatAddedToCommunity &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(communityId)]);
}
