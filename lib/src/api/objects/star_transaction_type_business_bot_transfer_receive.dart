// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a transfer of Telegram Stars from a business account;
/// relevant for bots only
@immutable
class StarTransactionTypeBusinessBotTransferReceive
    extends StarTransactionType {
  const StarTransactionTypeBusinessBotTransferReceive({
    required this.userId,
  });

  /// [userId] Identifier of the user who sent Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferReceive';

  static StarTransactionTypeBusinessBotTransferReceive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferReceive(
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeBusinessBotTransferReceive &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
