// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a suggested post based on a previously sent message in a channel
/// direct messages chat. Can be also used to suggest price or time change for
/// an existing suggested post. Returns the sent message
/// Returns [Message]
@immutable
class AddOffer extends TdFunction {
  const AddOffer({
    required this.chatId,
    required this.messageId,
    required this.options,
  });

  /// [chatId] Identifier of the channel direct messages chat
  final int chatId;

  /// [messageId] Identifier of the message in the chat which will be sent as
  /// suggested post. Use messageProperties.can_add_offer to check whether an
  /// offer can be added or messageProperties.can_edit_suggested_post_info to
  /// check whether price or time of sending of the post can be changed
  final int messageId;

  /// [options] Options to be used to send the message. New information about
  /// the suggested post must always be specified
  final MessageSendOptions options;

  static const String constructor = 'addOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'options': options.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddOffer &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.options, options));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(options)
      ]);
}
