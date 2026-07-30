// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports a sponsored message to Telegram moderators
/// Returns [ReportSponsoredResult]
@immutable
class ReportChatSponsoredMessage extends TdFunction {
  const ReportChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
    required this.optionId,
  });

  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportChatSponsoredMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_id': optionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportChatSponsoredMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.optionId, optionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(optionId)
      ]);
}
