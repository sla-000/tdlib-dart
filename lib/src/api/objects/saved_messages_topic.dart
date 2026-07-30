// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a Saved Messages topic
@immutable
class SavedMessagesTopic extends TdObject {
  const SavedMessagesTopic({
    required this.id,
    required this.type,
    required this.isPinned,
    required this.order,
    this.lastMessage,
    this.draftMessage,
  });

  /// [id] Unique topic identifier
  final int id;

  /// [type] Type of the topic
  final SavedMessagesTopicType type;

  /// [isPinned] True, if the topic is pinned
  final bool isPinned;

  /// [order] A parameter used to determine order of the topic in the topic
  /// list. Topics must be sorted by the order in descending order
  final int order;

  /// [lastMessage] Last message in the topic; may be null if none or unknown
  final Message? lastMessage;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;

  static const String constructor = 'savedMessagesTopic';

  static SavedMessagesTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTopic(
      id: json['id'] as int,
      type: SavedMessagesTopicType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
      isPinned: json['is_pinned'] as bool,
      order: int.tryParse(json['order']) ?? 0,
      lastMessage:
          Message.fromJson(json['last_message'] as Map<String, dynamic>?),
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type.toJson(),
        'is_pinned': isPinned,
        'order': order.toString(),
        'last_message': lastMessage?.toJson(),
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SavedMessagesTopic &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned) &&
          const DeepCollectionEquality().equals(other.order, order) &&
          const DeepCollectionEquality()
              .equals(other.lastMessage, lastMessage) &&
          const DeepCollectionEquality()
              .equals(other.draftMessage, draftMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(isPinned),
        const DeepCollectionEquality().hash(order),
        const DeepCollectionEquality().hash(lastMessage),
        const DeepCollectionEquality().hash(draftMessage)
      ]);
}
