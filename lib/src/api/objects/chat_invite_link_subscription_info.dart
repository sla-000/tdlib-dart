// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about subscription plan that must be paid by the user
/// to use a chat invite link
@immutable
class ChatInviteLinkSubscriptionInfo extends TdObject {
  const ChatInviteLinkSubscriptionInfo({
    required this.pricing,
    required this.canReuse,
    required this.formId,
  });

  /// [pricing] Information about subscription plan that must be paid by the
  /// user to use the link
  final StarSubscriptionPricing pricing;

  /// [canReuse] True, if the user has already paid for the subscription and can
  /// use joinChatByInviteLink to join the subscribed chat again
  final bool canReuse;

  /// [formId] Identifier of the payment form to use for subscription payment; 0
  /// if the subscription can't be paid
  final int formId;

  static const String constructor = 'chatInviteLinkSubscriptionInfo';

  static ChatInviteLinkSubscriptionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkSubscriptionInfo(
      pricing: StarSubscriptionPricing.fromJson(
          json['pricing'] as Map<String, dynamic>?)!,
      canReuse: json['can_reuse'] as bool,
      formId: int.tryParse(json['form_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pricing': pricing.toJson(),
        'can_reuse': canReuse,
        'form_id': formId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatInviteLinkSubscriptionInfo &&
          const DeepCollectionEquality().equals(other.pricing, pricing) &&
          const DeepCollectionEquality().equals(other.canReuse, canReuse) &&
          const DeepCollectionEquality().equals(other.formId, formId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(pricing),
        const DeepCollectionEquality().hash(canReuse),
        const DeepCollectionEquality().hash(formId)
      ]);
}
