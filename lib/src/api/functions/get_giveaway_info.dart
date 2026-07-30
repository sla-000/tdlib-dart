// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a giveaway
/// Returns [GiveawayInfo]
@immutable
class GetGiveawayInfo extends TdFunction {
  const GetGiveawayInfo({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the channel chat which started the giveaway
  final int chatId;

  /// [messageId] Identifier of the giveaway or a giveaway winners message in
  /// the chat
  final int messageId;

  static const String constructor = 'getGiveawayInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGiveawayInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
