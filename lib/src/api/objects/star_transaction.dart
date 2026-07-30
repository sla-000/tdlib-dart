// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a transaction changing the amount of owned Telegram Stars
@immutable
class StarTransaction extends TdObject {
  const StarTransaction({
    required this.id,
    required this.starAmount,
    required this.isRefund,
    required this.date,
    required this.type,
  });

  /// [id] Unique identifier of the transaction
  final String id;

  /// [starAmount] The amount of added owned Telegram Stars; negative for
  /// outgoing transactions
  final StarAmount starAmount;

  /// [isRefund] True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// [date] Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// [type] Type of the transaction
  final StarTransactionType type;

  static const String constructor = 'starTransaction';

  static StarTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransaction(
      id: (json['id'] as String?) ?? '',
      starAmount:
          StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>?)!,
      isRefund: (json['is_refund'] as bool?) ?? false,
      date: (json['date'] as int?) ?? 0,
      type:
          StarTransactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'star_amount': starAmount.toJson(),
        'is_refund': isRefund,
        'date': date,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransaction &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.starAmount, starAmount) &&
          const DeepCollectionEquality().equals(other.isRefund, isRefund) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(starAmount),
        const DeepCollectionEquality().hash(isRefund),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(type)
      ]);
}
