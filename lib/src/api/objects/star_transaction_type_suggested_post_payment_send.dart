import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a payment for a suggested post; relevant for regular
/// users only
@immutable
class StarTransactionTypeSuggestedPostPaymentSend extends StarTransactionType {
  const StarTransactionTypeSuggestedPostPaymentSend({
    required this.chatId,
  });

  /// [chatId] Identifier of the channel chat that posted the post
  final int chatId;

  static const String constructor =
      'starTransactionTypeSuggestedPostPaymentSend';

  static StarTransactionTypeSuggestedPostPaymentSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeSuggestedPostPaymentSend(
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
