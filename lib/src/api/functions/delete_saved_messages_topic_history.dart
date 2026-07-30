// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all messages in a Saved Messages topic
/// Returns [Ok]
@immutable
class DeleteSavedMessagesTopicHistory extends TdFunction {
  const DeleteSavedMessagesTopicHistory({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages
  /// will be deleted
  final int savedMessagesTopicId;

  static const String constructor = 'deleteSavedMessagesTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteSavedMessagesTopicHistory &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(savedMessagesTopicId)]);
}
