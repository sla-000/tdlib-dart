// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A group call message failed to send
@immutable
class UpdateGroupCallMessageSendFailed extends Update {
  const UpdateGroupCallMessageSendFailed({
    required this.groupCallId,
    required this.messageId,
    required this.error,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [messageId] Message identifier
  final int messageId;

  /// [error] The cause of the message sending failure
  final TdError error;

  static const String constructor = 'updateGroupCallMessageSendFailed';

  static UpdateGroupCallMessageSendFailed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessageSendFailed(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'message_id': messageId,
        'error': error.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateGroupCallMessageSendFailed &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.error, error));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(error)
      ]);
}
