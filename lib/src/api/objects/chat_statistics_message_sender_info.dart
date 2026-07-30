// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains statistics about messages sent by a user
@immutable
class ChatStatisticsMessageSenderInfo extends TdObject {
  const ChatStatisticsMessageSenderInfo({
    required this.userId,
    required this.sentMessageCount,
    required this.averageCharacterCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [sentMessageCount] Number of sent messages
  final int sentMessageCount;

  /// [averageCharacterCount] Average number of characters in sent messages; 0
  /// if unknown
  final int averageCharacterCount;

  static const String constructor = 'chatStatisticsMessageSenderInfo';

  static ChatStatisticsMessageSenderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsMessageSenderInfo(
      userId: (json['user_id'] as int?) ?? 0,
      sentMessageCount: (json['sent_message_count'] as int?) ?? 0,
      averageCharacterCount: (json['average_character_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'sent_message_count': sentMessageCount,
        'average_character_count': averageCharacterCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsMessageSenderInfo &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.sentMessageCount, sentMessageCount) &&
          const DeepCollectionEquality()
              .equals(other.averageCharacterCount, averageCharacterCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(sentMessageCount),
        const DeepCollectionEquality().hash(averageCharacterCount)
      ]);
}
