// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sending of a paid group reaction; relevant for
/// regular users only
@immutable
class StarTransactionTypePaidGroupCallReactionSend extends StarTransactionType {
  const StarTransactionTypePaidGroupCallReactionSend({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  static const String constructor =
      'starTransactionTypePaidGroupCallReactionSend';

  static StarTransactionTypePaidGroupCallReactionSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallReactionSend(
      chatId: (json['chat_id'] as int?) ?? 0,
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
          other is StarTransactionTypePaidGroupCallReactionSend &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
