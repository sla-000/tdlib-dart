// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns available options for creating of Telegram Premium giveaway or
/// manual distribution of Telegram Premium among chat members
/// Returns [PremiumGiveawayPaymentOptions]
@immutable
class GetPremiumGiveawayPaymentOptions extends TdFunction {
  const GetPremiumGiveawayPaymentOptions({
    required this.boostedChatId,
  });

  /// [boostedChatId] Identifier of the supergroup or channel chat, which will
  /// be automatically boosted by receivers of the gift codes and which is
  /// administered by the user
  final int boostedChatId;

  static const String constructor = 'getPremiumGiveawayPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boosted_chat_id': boostedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPremiumGiveawayPaymentOptions &&
          const DeepCollectionEquality()
              .equals(other.boostedChatId, boostedChatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(boostedChatId)]);
}
