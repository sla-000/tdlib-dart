// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns tags used in Saved Messages or a Saved Messages topic
/// Returns [SavedMessagesTags]
@immutable
class GetSavedMessagesTags extends TdFunction {
  const GetSavedMessagesTags({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags will
  /// be returned; pass 0 to get all Saved Messages tags
  final int savedMessagesTopicId;

  static const String constructor = 'getSavedMessagesTags';

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
          other is GetSavedMessagesTags &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(savedMessagesTopicId)]);
}
