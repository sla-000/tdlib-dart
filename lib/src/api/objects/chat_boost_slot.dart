// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a slot for chat boost
@immutable
class ChatBoostSlot extends TdObject {
  const ChatBoostSlot({
    required this.slotId,
    required this.currentlyBoostedChatId,
    required this.startDate,
    required this.expirationDate,
    required this.cooldownUntilDate,
  });

  /// [slotId] Unique identifier of the slot
  final int slotId;

  /// [currentlyBoostedChatId] Identifier of the currently boosted chat; 0 if
  /// none
  final int currentlyBoostedChatId;

  /// [startDate] Point in time (Unix timestamp) when the chat was boosted; 0 if
  /// none
  final int startDate;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will expire
  final int expirationDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) after which the boost
  /// can be used for another chat
  final int cooldownUntilDate;

  static const String constructor = 'chatBoostSlot';

  static ChatBoostSlot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSlot(
      slotId: (json['slot_id'] as int?) ?? 0,
      currentlyBoostedChatId: (json['currently_boosted_chat_id'] as int?) ?? 0,
      startDate: (json['start_date'] as int?) ?? 0,
      expirationDate: (json['expiration_date'] as int?) ?? 0,
      cooldownUntilDate: (json['cooldown_until_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'slot_id': slotId,
        'currently_boosted_chat_id': currentlyBoostedChatId,
        'start_date': startDate,
        'expiration_date': expirationDate,
        'cooldown_until_date': cooldownUntilDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostSlot &&
          const DeepCollectionEquality().equals(other.slotId, slotId) &&
          const DeepCollectionEquality()
              .equals(other.currentlyBoostedChatId, currentlyBoostedChatId) &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate) &&
          const DeepCollectionEquality()
              .equals(other.cooldownUntilDate, cooldownUntilDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(slotId),
        const DeepCollectionEquality().hash(currentlyBoostedChatId),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(expirationDate),
        const DeepCollectionEquality().hash(cooldownUntilDate)
      ]);
}
