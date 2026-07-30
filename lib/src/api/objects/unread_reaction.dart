// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about an unread reaction to a message
@immutable
class UnreadReaction extends TdObject {
  const UnreadReaction({
    required this.type,
    required this.senderId,
    required this.isBig,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the sender, added the reaction
  final MessageSender senderId;

  /// [isBig] True, if the reaction was added with a big animation
  final bool isBig;

  static const String constructor = 'unreadReaction';

  static UnreadReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UnreadReaction(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      isBig: json['is_big'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'sender_id': senderId.toJson(),
        'is_big': isBig,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UnreadReaction &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.isBig, isBig));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(isBig)
      ]);
}
