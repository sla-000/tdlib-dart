// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some group call messages were deleted
@immutable
class UpdateGroupCallMessagesDeleted extends Update {
  const UpdateGroupCallMessagesDeleted({
    required this.groupCallId,
    required this.messageIds,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  static const String constructor = 'updateGroupCallMessagesDeleted';

  static UpdateGroupCallMessagesDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessagesDeleted(
      groupCallId: json['group_call_id'] as int,
      messageIds: List<int>.from(
          ((json['message_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateGroupCallMessagesDeleted &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(messageIds)
      ]);
}
