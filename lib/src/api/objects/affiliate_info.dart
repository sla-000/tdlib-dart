// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about an affiliate that received commission from a
/// Telegram Star transaction
@immutable
class AffiliateInfo extends TdObject {
  const AffiliateInfo({
    required this.commissionPerMille,
    required this.affiliateChatId,
    required this.starAmount,
  });

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  /// [affiliateChatId] Identifier of the chat which received the commission
  final int affiliateChatId;

  /// [starAmount] The Telegram Star amount that was received by the affiliate;
  /// can be negative for refunds
  final StarAmount starAmount;

  static const String constructor = 'affiliateInfo';

  static AffiliateInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateInfo(
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      affiliateChatId: (json['affiliate_chat_id'] as int?) ?? 0,
      starAmount:
          StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'commission_per_mille': commissionPerMille,
        'affiliate_chat_id': affiliateChatId,
        'star_amount': starAmount.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AffiliateInfo &&
          const DeepCollectionEquality()
              .equals(other.commissionPerMille, commissionPerMille) &&
          const DeepCollectionEquality()
              .equals(other.affiliateChatId, affiliateChatId) &&
          const DeepCollectionEquality().equals(other.starAmount, starAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(commissionPerMille),
        const DeepCollectionEquality().hash(affiliateChatId),
        const DeepCollectionEquality().hash(starAmount)
      ]);
}
