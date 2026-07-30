// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewGroupCallMessage &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(message)
      ]);
}
