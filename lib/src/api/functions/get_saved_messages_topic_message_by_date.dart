// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the last message sent in a Saved Messages topic no later than the
/// specified date
/// Returns [Message]
@immutable
class GetSavedMessagesTopicMessageByDate extends TdFunction {
  const GetSavedMessagesTopicMessageByDate({
    required this.savedMessagesTopicId,
    required this.date,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which message
  /// will be returned
  final int savedMessagesTopicId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String constructor = 'getSavedMessagesTopicMessageByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSavedMessagesTopicMessageByDate &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(savedMessagesTopicId),
        const DeepCollectionEquality().hash(date)
      ]);
}
