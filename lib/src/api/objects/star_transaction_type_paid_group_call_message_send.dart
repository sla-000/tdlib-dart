import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sending of a paid group call message; relevant for
/// regular users only
@immutable
class StarTransactionTypePaidGroupCallMessageSend extends StarTransactionType {
  const StarTransactionTypePaidGroupCallMessageSend({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  static const String constructor =
      'starTransactionTypePaidGroupCallMessageSend';

  static StarTransactionTypePaidGroupCallMessageSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallMessageSend(
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
