// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the order of pinned Saved Messages topics
/// Returns [Ok]
@immutable
class SetPinnedSavedMessagesTopics extends TdFunction {
  const SetPinnedSavedMessagesTopics({
    required this.savedMessagesTopicIds,
  });

  /// [savedMessagesTopicIds] Identifiers of the new pinned Saved Messages
  /// topics
  final List<int> savedMessagesTopicIds;

  static const String constructor = 'setPinnedSavedMessagesTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_ids':
            savedMessagesTopicIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetPinnedSavedMessagesTopics &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicIds, savedMessagesTopicIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(savedMessagesTopicIds)
      ]);
}
