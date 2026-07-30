// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a just created or just joined group call
@immutable
class GroupCallInfo extends TdObject {
  const GroupCallInfo({
    required this.groupCallId,
    required this.joinPayload,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [joinPayload] Join response payload for tgcalls; empty if the call isn't
  /// joined
  final String joinPayload;

  static const String constructor = 'groupCallInfo';

  static GroupCallInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallInfo(
      groupCallId: json['group_call_id'] as int,
      joinPayload: json['join_payload'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'join_payload': joinPayload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallInfo &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.joinPayload, joinPayload));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(joinPayload)
      ]);
}
