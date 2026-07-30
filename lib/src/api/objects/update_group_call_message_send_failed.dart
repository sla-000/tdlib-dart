import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      groupCallId: json['group_call_id'] as int,
      messageId: json['message_id'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
