import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages sent by the specified message sender in a group call;
/// for live story calls only. Requires groupCall.can_delete_messages right
/// Returns [Ok]
@immutable
class DeleteGroupCallMessagesBySender extends TdFunction {
  const DeleteGroupCallMessagesBySender({
    required this.groupCallId,
    required this.senderId,
    required this.reportSpam,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [senderId] Identifier of the sender of messages to delete
  final MessageSender senderId;

  /// [reportSpam] Pass true to report the messages as spam
  final bool reportSpam;

  static const String constructor = 'deleteGroupCallMessagesBySender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'sender_id': senderId.toJson(),
        'report_spam': reportSpam,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
