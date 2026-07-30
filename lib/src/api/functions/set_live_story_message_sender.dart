import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Selects a message sender to send messages in a live story call
/// Returns [Ok]
@immutable
class SetLiveStoryMessageSender extends TdFunction {
  const SetLiveStoryMessageSender({
    required this.groupCallId,
    required this.messageSenderId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [messageSenderId] New message sender for the group call
  final MessageSender messageSenderId;

  static const String constructor = 'setLiveStoryMessageSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'message_sender_id': messageSenderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
