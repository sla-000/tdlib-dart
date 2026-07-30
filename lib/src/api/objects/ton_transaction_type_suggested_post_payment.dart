import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
