// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new member joined the chat from a community
@immutable
class MessageChatJoinFromCommunity extends MessageContent {
  const MessageChatJoinFromCommunity({
    required this.communityId,
  });

  /// [communityId] Identifier of the community from which the user joined the
  /// chat
  final int communityId;

  static const String constructor = 'messageChatJoinFromCommunity';

  static MessageChatJoinFromCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatJoinFromCommunity(
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
          other is MessageChatJoinFromCommunity &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(communityId)]);
}
