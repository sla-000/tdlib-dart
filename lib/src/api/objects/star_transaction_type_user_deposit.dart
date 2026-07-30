// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars by another user; relevant
/// for regular users only
@immutable
class StarTransactionTypeUserDeposit extends StarTransactionType {
  const StarTransactionTypeUserDeposit({
    required this.userId,
    this.sticker,
  });

  /// [userId] Identifier of the user who gifted Telegram Stars; 0 if the user
  /// was anonymous
  final int userId;

  /// [sticker] The sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'starTransactionTypeUserDeposit';

  static StarTransactionTypeUserDeposit? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUserDeposit(
      userId: json['user_id'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeUserDeposit &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
