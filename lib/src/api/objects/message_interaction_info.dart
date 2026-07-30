// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about interactions with a message
@immutable
class MessageInteractionInfo extends TdObject {
  const MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    this.replyInfo,
    this.reactions,
  });

  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  /// [replyInfo] Information about direct or indirect replies to the message;
  /// may be null. Currently, available only in channels with a discussion
  /// supergroup and discussion supergroups for messages, which are not replies
  /// itself
  final MessageReplyInfo? replyInfo;

  /// [reactions] The list of reactions or tags added to the message; may be
  /// null
  final MessageReactions? reactions;

  static const String constructor = 'messageInteractionInfo';

  static MessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInteractionInfo(
      viewCount: json['view_count'] as int,
      forwardCount: json['forward_count'] as int,
      replyInfo: MessageReplyInfo.fromJson(
          json['reply_info'] as Map<String, dynamic>?),
      reactions:
          MessageReactions.fromJson(json['reactions'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'view_count': viewCount,
        'forward_count': forwardCount,
        'reply_info': replyInfo?.toJson(),
        'reactions': reactions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageInteractionInfo &&
          const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
          const DeepCollectionEquality()
              .equals(other.forwardCount, forwardCount) &&
          const DeepCollectionEquality().equals(other.replyInfo, replyInfo) &&
          const DeepCollectionEquality().equals(other.reactions, reactions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(viewCount),
        const DeepCollectionEquality().hash(forwardCount),
        const DeepCollectionEquality().hash(replyInfo),
        const DeepCollectionEquality().hash(reactions)
      ]);
}
