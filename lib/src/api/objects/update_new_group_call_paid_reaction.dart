// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new paid reaction was received in a live story group call
@immutable
class UpdateNewGroupCallPaidReaction extends Update {
  const UpdateNewGroupCallPaidReaction({
    required this.groupCallId,
    required this.senderId,
    required this.starCount,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [senderId] Identifier of the sender of the reaction
  final MessageSender senderId;

  /// [starCount] The number of Telegram Stars that were paid to send the
  /// reaction
  final int starCount;

  static const String constructor = 'updateNewGroupCallPaidReaction';

  static UpdateNewGroupCallPaidReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGroupCallPaidReaction(
      groupCallId: json['group_call_id'] as int,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'sender_id': senderId.toJson(),
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewGroupCallPaidReaction &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
