// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains identifiers of group call participants
@immutable
class GroupCallParticipants extends TdObject {
  const GroupCallParticipants({
    required this.totalCount,
    required this.participantIds,
  });

  /// [totalCount] Total number of group call participants
  final int totalCount;

  /// [participantIds] Identifiers of the participants
  final List<MessageSender> participantIds;

  static const String constructor = 'groupCallParticipants';

  static GroupCallParticipants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipants(
      totalCount: json['total_count'] as int,
      participantIds: List<MessageSender>.from(
          ((json['participant_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageSender.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'participant_ids': participantIds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallParticipants &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality()
              .equals(other.participantIds, participantIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(participantIds)
      ]);
}
