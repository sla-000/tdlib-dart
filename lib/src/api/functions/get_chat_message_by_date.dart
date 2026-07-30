// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the last message sent in a chat no later than the specified date.
/// Returns a 404 error if such message doesn't exist
/// Returns [Message]
@immutable
class GetChatMessageByDate extends TdFunction {
  const GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String constructor = 'getChatMessageByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatMessageByDate &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(date)
      ]);
}
