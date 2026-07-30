// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new video chat was scheduled
@immutable
class MessageVideoChatScheduled extends MessageContent {
  const MessageVideoChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [startDate] Point in time (Unix timestamp) when the group call is expected
  /// to be started by an administrator
  final int startDate;

  static const String constructor = 'messageVideoChatScheduled';

  static MessageVideoChatScheduled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatScheduled(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      startDate: (json['start_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'start_date': startDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageVideoChatScheduled &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.startDate, startDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(startDate)
      ]);
}
