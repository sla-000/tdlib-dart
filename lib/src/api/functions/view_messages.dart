// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that messages are being viewed by the user. Sponsored
/// messages must be marked as viewed only when the entire text of the message
/// is shown on the screen (excluding the button). Many useful activities
/// depend on whether the messages are currently being viewed or not (e.g.,
/// marking messages as read, incrementing a view counter, updating a view
/// counter, removing deleted messages in supergroups and channels)
/// Returns [Ok]
@immutable
class ViewMessages extends TdFunction {
  const ViewMessages({
    required this.chatId,
    required this.messageIds,
    this.source,
    required this.forceRead,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] The identifiers of the messages being viewed
  final List<int> messageIds;

  /// [source] Source of the message view; pass null to guess the source based
  /// on chat open state
  final MessageSource? source;

  /// [forceRead] Pass true to mark as read the specified messages even if the
  /// chat is closed
  final bool forceRead;

  static const String constructor = 'viewMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'source': source?.toJson(),
        'force_read': forceRead,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ViewMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds) &&
          const DeepCollectionEquality().equals(other.source, source) &&
          const DeepCollectionEquality().equals(other.forceRead, forceRead));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageIds),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(forceRead)
      ]);
}
