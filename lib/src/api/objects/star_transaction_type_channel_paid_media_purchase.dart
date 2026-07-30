// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of paid media from a channel by the current
/// user; relevant for regular users only
@immutable
class StarTransactionTypeChannelPaidMediaPurchase extends StarTransactionType {
  const StarTransactionTypeChannelPaidMediaPurchase({
    required this.chatId,
    required this.messageId,
    required this.media,
  });

  /// [chatId] Identifier of the channel chat that sent the paid media
  final int chatId;

  /// [messageId] Identifier of the corresponding message with paid media; may
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor =
      'starTransactionTypeChannelPaidMediaPurchase';

  static StarTransactionTypeChannelPaidMediaPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidMediaPurchase(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'media': media.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeChannelPaidMediaPurchase &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.media, media));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(media)
      ]);
}
