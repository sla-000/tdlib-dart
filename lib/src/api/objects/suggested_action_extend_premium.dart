// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to extend their expiring Telegram Premium subscription
@immutable
class SuggestedActionExtendPremium extends SuggestedAction {
  const SuggestedActionExtendPremium({
    required this.managePremiumSubscriptionUrl,
  });

  /// [managePremiumSubscriptionUrl] A URL for managing Telegram Premium
  /// subscription
  final String managePremiumSubscriptionUrl;

  static const String constructor = 'suggestedActionExtendPremium';

  static SuggestedActionExtendPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionExtendPremium(
      managePremiumSubscriptionUrl:
          (json['manage_premium_subscription_url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'manage_premium_subscription_url': managePremiumSubscriptionUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedActionExtendPremium &&
          const DeepCollectionEquality().equals(
              other.managePremiumSubscriptionUrl,
              managePremiumSubscriptionUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(managePremiumSubscriptionUrl)
      ]);
}
