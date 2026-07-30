// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes messages in a group call; for live story calls only. Requires
/// groupCallMessage.can_be_deleted right
/// Returns [Ok]
@immutable
class DeleteGroupCallMessages extends TdFunction {
  const DeleteGroupCallMessages({
    required this.groupCallId,
    required this.messageIds,
    required this.reportSpam,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [messageIds] Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// [reportSpam] Pass true to report the messages as spam
  final bool reportSpam;

  static const String constructor = 'deleteGroupCallMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'message_ids': messageIds.map((item) => item).toList(),
        'report_spam': reportSpam,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteGroupCallMessages &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds) &&
          const DeepCollectionEquality().equals(other.reportSpam, reportSpam));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(messageIds),
        const DeepCollectionEquality().hash(reportSpam)
      ]);
}
