// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a transfer of Telegram Stars to a business bot;
/// relevant for regular users only
@immutable
class StarTransactionTypeBusinessBotTransferSend extends StarTransactionType {
  const StarTransactionTypeBusinessBotTransferSend({
    required this.userId,
  });

  /// [userId] Identifier of the bot that received Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferSend';

  static StarTransactionTypeBusinessBotTransferSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferSend(
      userId: json['user_id'] as int,
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
          other is StarTransactionTypeBusinessBotTransferSend &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
