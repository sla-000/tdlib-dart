// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Pins or unpins a message sent on behalf of a business account; for bots
/// only
/// Returns [Ok]
@immutable
class SetBusinessMessageIsPinned extends TdFunction {
  const SetBusinessMessageIsPinned({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isPinned] Pass true to pin the message, pass false to unpin it
  final bool isPinned;

  static const String constructor = 'setBusinessMessageIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'message_id': messageId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessMessageIsPinned &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
