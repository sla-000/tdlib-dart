// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a message sent in a group call
@immutable
class GroupCallMessage extends TdObject {
  const GroupCallMessage({
    required this.messageId,
    required this.senderId,
    required this.date,
    required this.text,
    required this.paidMessageStarCount,
    required this.isFromOwner,
    required this.canBeDeleted,
  });

  /// [messageId] Unique message identifier within the group call
  final int messageId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  /// [text] Text of the message. If empty, then the message is a paid reaction
  /// in a live story
  final FormattedText text;

  /// [paidMessageStarCount] The number of Telegram Stars that were paid to send
  /// the message; for live stories only
  final int paidMessageStarCount;

  /// [isFromOwner] True, if the message is sent by the owner of the call and
  /// must be treated as a message of the maximum level; for live stories only
  final bool isFromOwner;

  /// [canBeDeleted] True, if the message can be deleted by the current user;
  /// for live stories only
  final bool canBeDeleted;

  static const String constructor = 'groupCallMessage';

  static GroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallMessage(
      messageId: json['message_id'] as int,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      paidMessageStarCount: json['paid_message_star_count'] as int,
      isFromOwner: json['is_from_owner'] as bool,
      canBeDeleted: json['can_be_deleted'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'sender_id': senderId.toJson(),
        'date': date,
        'text': text.toJson(),
        'paid_message_star_count': paidMessageStarCount,
        'is_from_owner': isFromOwner,
        'can_be_deleted': canBeDeleted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount) &&
          const DeepCollectionEquality()
              .equals(other.isFromOwner, isFromOwner) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeleted, canBeDeleted));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(paidMessageStarCount),
        const DeepCollectionEquality().hash(isFromOwner),
        const DeepCollectionEquality().hash(canBeDeleted)
      ]);
}
