// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the time when a scheduled message will be sent. Scheduling state of
/// all messages in the same album or forwarded together with the message will
/// be also changed
/// Returns [Ok]
@immutable
class EditMessageSchedulingState extends TdFunction {
  const EditMessageSchedulingState({
    required this.chatId,
    required this.messageId,
    this.schedulingState,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use
  /// messageProperties.can_edit_scheduling_state to check whether the message
  /// is suitable
  final int messageId;

  /// [schedulingState] The new message scheduling state; pass null to send the
  /// message immediately. Must be null for messages in the state
  /// messageSchedulingStateSendWhenVideoProcessed
  final MessageSchedulingState? schedulingState;

  static const String constructor = 'editMessageSchedulingState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'scheduling_state': schedulingState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditMessageSchedulingState &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.schedulingState, schedulingState));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(schedulingState)
      ]);
}
