// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a chat revenue transactions
@immutable
class ChatRevenueTransaction extends TdObject {
  const ChatRevenueTransaction({
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.type,
  });

  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The withdrawn amount, in the smallest units of the
  /// cryptocurrency
  final int cryptocurrencyAmount;

  /// [type] Type of the transaction
  final ChatRevenueTransactionType type;

  static const String constructor = 'chatRevenueTransaction';

  static ChatRevenueTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransaction(
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount: (json['cryptocurrency_amount'] is int
              ? json['cryptocurrency_amount'] as int
              : int.tryParse(
                  json['cryptocurrency_amount']?.toString() ?? '')) ??
          0,
      type: ChatRevenueTransactionType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatRevenueTransaction &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrencyAmount, cryptocurrencyAmount) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(cryptocurrencyAmount),
        const DeepCollectionEquality().hash(type)
      ]);
}
