// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a new subscription invite link for a channel chat. Requires
/// can_invite_users right in the chat
/// Returns [ChatInviteLink]
@immutable
class CreateChatSubscriptionInviteLink extends TdFunction {
  const CreateChatSubscriptionInviteLink({
    required this.chatId,
    required this.name,
    required this.subscriptionPricing,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [subscriptionPricing] Information about subscription plan that will be
  /// applied to the users joining the chat via the link. Subscription period
  /// must be 2592000 in production environment, and 60 or 300 if Telegram test
  /// environment is used
  final StarSubscriptionPricing subscriptionPricing;

  static const String constructor = 'createChatSubscriptionInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'name': name,
        'subscription_pricing': subscriptionPricing.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateChatSubscriptionInviteLink &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionPricing, subscriptionPricing));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(subscriptionPricing)
      ]);
}
