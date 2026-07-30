// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message sent in the chat
@immutable
class ChatStatisticsObjectTypeMessage extends ChatStatisticsObjectType {
  const ChatStatisticsObjectTypeMessage({
    required this.messageId,
  });

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'chatStatisticsObjectTypeMessage';

  static ChatStatisticsObjectTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeMessage(
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsObjectTypeMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(messageId)]);
}
