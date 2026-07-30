// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all messages between the specified dates in a Saved Messages
/// topic. Messages sent in the last 30 seconds will not be deleted
/// Returns [Ok]
@immutable
class DeleteSavedMessagesTopicMessagesByDate extends TdFunction {
  const DeleteSavedMessagesTopicMessagesByDate({
    required this.savedMessagesTopicId,
    required this.minDate,
    required this.maxDate,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages
  /// will be deleted
  final int savedMessagesTopicId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  static const String constructor = 'deleteSavedMessagesTopicMessagesByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'min_date': minDate,
        'max_date': maxDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteSavedMessagesTopicMessagesByDate &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId) &&
          const DeepCollectionEquality().equals(other.minDate, minDate) &&
          const DeepCollectionEquality().equals(other.maxDate, maxDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(savedMessagesTopicId),
        const DeepCollectionEquality().hash(minDate),
        const DeepCollectionEquality().hash(maxDate)
      ]);
}
