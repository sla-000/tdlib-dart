// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A suggested post was approved
@immutable
class MessageSuggestedPostApproved extends MessageContent {
  const MessageSuggestedPostApproved({
    required this.suggestedPostMessageId,
    this.price,
    required this.sendDate,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [price] Price of the suggested post; may be null if the post is non-paid
  final SuggestedPostPrice? price;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published
  final int sendDate;

  static const String constructor = 'messageSuggestedPostApproved';

  static MessageSuggestedPostApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostApproved(
      suggestedPostMessageId: json['suggested_post_message_id'] as int,
      price:
          SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>?),
      sendDate: json['send_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'price': price?.toJson(),
        'send_date': sendDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSuggestedPostApproved &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostMessageId, suggestedPostMessageId) &&
          const DeepCollectionEquality().equals(other.price, price) &&
          const DeepCollectionEquality().equals(other.sendDate, sendDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(suggestedPostMessageId),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(sendDate)
      ]);
}
