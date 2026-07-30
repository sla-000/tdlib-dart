import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Approval of suggested post has failed, because the user who proposed the
/// post didn't have enough funds
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
      suggestedPostMessageId: json['suggested_post_message_id'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
