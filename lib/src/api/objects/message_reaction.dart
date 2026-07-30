// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a reaction to a message
@immutable
class MessageReaction extends TdObject {
  const MessageReaction({
    required this.type,
    required this.totalCount,
    required this.isChosen,
    this.usedSenderId,
    required this.recentSenderIds,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isChosen] True, if the reaction is chosen by the current user
  final bool isChosen;

  /// [usedSenderId] Identifier of the message sender used by the current user
  /// to add the reaction; may be null if unknown or the reaction isn't chosen
  final MessageSender? usedSenderId;

  /// [recentSenderIds] Identifiers of at most 3 recent message senders, added
  /// the reaction; available in private, basic group and supergroup chats
  final List<MessageSender> recentSenderIds;

  static const String constructor = 'messageReaction';

  static MessageReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReaction(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
      totalCount: json['total_count'] as int,
      isChosen: json['is_chosen'] as bool,
      usedSenderId: MessageSender.fromJson(
          json['used_sender_id'] as Map<String, dynamic>?),
      recentSenderIds: List<MessageSender>.from(
          ((json['recent_sender_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageSender.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'total_count': totalCount,
        'is_chosen': isChosen,
        'used_sender_id': usedSenderId?.toJson(),
        'recent_sender_ids':
            recentSenderIds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageReaction &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.isChosen, isChosen) &&
          const DeepCollectionEquality()
              .equals(other.usedSenderId, usedSenderId) &&
          const DeepCollectionEquality()
              .equals(other.recentSenderIds, recentSenderIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(isChosen),
        const DeepCollectionEquality().hash(usedSenderId),
        const DeepCollectionEquality().hash(recentSenderIds)
      ]);
}
