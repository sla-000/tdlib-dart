// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of transaction for revenue earned from sponsored messages
/// in a chat
@immutable
abstract class ChatRevenueTransactionType extends TdObject {
  const ChatRevenueTransactionType();

  static const String constructor = 'chatRevenueTransactionType';

  /// Inherited by:
  /// [ChatRevenueTransactionTypeFragmentRefund]
  /// [ChatRevenueTransactionTypeFragmentWithdrawal]
  /// [ChatRevenueTransactionTypeSponsoredMessageEarnings]
  /// [ChatRevenueTransactionTypeSuggestedPostEarnings]
  /// [ChatRevenueTransactionTypeUnsupported]
  static ChatRevenueTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatRevenueTransactionTypeFragmentRefund.constructor:
        return ChatRevenueTransactionTypeFragmentRefund.fromJson(json);
      case ChatRevenueTransactionTypeFragmentWithdrawal.constructor:
        return ChatRevenueTransactionTypeFragmentWithdrawal.fromJson(json);
      case ChatRevenueTransactionTypeSponsoredMessageEarnings.constructor:
        return ChatRevenueTransactionTypeSponsoredMessageEarnings.fromJson(
            json);
      case ChatRevenueTransactionTypeSuggestedPostEarnings.constructor:
        return ChatRevenueTransactionTypeSuggestedPostEarnings.fromJson(json);
      case ChatRevenueTransactionTypeUnsupported.constructor:
        return ChatRevenueTransactionTypeUnsupported.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatRevenueTransactionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
