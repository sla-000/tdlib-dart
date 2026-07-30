// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteGroupCallMessagesBySender &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.reportSpam, reportSpam));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(reportSpam)
      ]);
}
