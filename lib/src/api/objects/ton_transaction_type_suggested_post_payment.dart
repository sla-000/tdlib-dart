// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a payment for a suggested post
@immutable
class TonTransactionTypeSuggestedPostPayment extends TonTransactionType {
  const TonTransactionTypeSuggestedPostPayment({
    required this.chatId,
  });

  /// [chatId] Identifier of the channel chat that posted the post
  final int chatId;

  static const String constructor = 'tonTransactionTypeSuggestedPostPayment';

  static TonTransactionTypeSuggestedPostPayment? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeSuggestedPostPayment(
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeSuggestedPostPayment &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
