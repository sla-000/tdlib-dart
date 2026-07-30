import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new message was received in a group call
@immutable
class UpdateNewGroupCallMessage extends Update {
  const UpdateNewGroupCallMessage({
    required this.groupCallId,
    required this.message,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [message] The message
  final GroupCallMessage message;

  static const String constructor = 'updateNewGroupCallMessage';

  static UpdateNewGroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGroupCallMessage(
      groupCallId: json['group_call_id'] as int,
      message:
          GroupCallMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
