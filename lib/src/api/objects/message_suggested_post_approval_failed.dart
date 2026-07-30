// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Approval of suggested post has failed, because the user which proposed the
/// post had no enough funds
@immutable
class MessageSuggestedPostApprovalFailed extends MessageContent {
  const MessageSuggestedPostApprovalFailed({
    required this.suggestedPostMessageId,
    required this.price,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [price] Price of the suggested post
  final SuggestedPostPrice price;

  static const String constructor = 'messageSuggestedPostApprovalFailed';

  static MessageSuggestedPostApprovalFailed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostApprovalFailed(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      price:
          SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'price': price.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSuggestedPostApprovalFailed &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostMessageId, suggestedPostMessageId) &&
          const DeepCollectionEquality().equals(other.price, price));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(suggestedPostMessageId),
        const DeepCollectionEquality().hash(price)
      ]);
}
