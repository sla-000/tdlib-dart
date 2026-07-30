// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a paid reaction to a message by the
/// channel chat; relevant for channel chats only
@immutable
class StarTransactionTypeChannelPaidReactionReceive
    extends StarTransactionType {
  const StarTransactionTypeChannelPaidReactionReceive({
    required this.userId,
    required this.messageId,
  });

  /// [userId] Identifier of the user who added the paid reaction
  final int userId;

  /// [messageId] Identifier of the reacted message; may be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor =
      'starTransactionTypeChannelPaidReactionReceive';

  static StarTransactionTypeChannelPaidReactionReceive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidReactionReceive(
      userId: json['user_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeChannelPaidReactionReceive &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
