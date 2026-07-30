// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a group call participant's video channel
@immutable
class GroupCallParticipantVideoInfo extends TdObject {
  const GroupCallParticipantVideoInfo({
    required this.sourceGroups,
    required this.endpointId,
    required this.isPaused,
  });

  /// [sourceGroups] List of synchronization source groups of the video
  final List<GroupCallVideoSourceGroup> sourceGroups;

  /// [endpointId] Video channel endpoint identifier
  final String endpointId;

  /// [isPaused] True, if the video is paused. This flag needs to be ignored, if
  /// new video frames are received
  final bool isPaused;

  static const String constructor = 'groupCallParticipantVideoInfo';

  static GroupCallParticipantVideoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipantVideoInfo(
      sourceGroups: List<GroupCallVideoSourceGroup>.from(((json['source_groups']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              GroupCallVideoSourceGroup.fromJson(item as Map<String, dynamic>?))
          .toList()),
      endpointId: (json['endpoint_id'] as String?) ?? '',
      isPaused: (json['is_paused'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source_groups': sourceGroups.map((item) => item.toJson()).toList(),
        'endpoint_id': endpointId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallParticipantVideoInfo &&
          const DeepCollectionEquality()
              .equals(other.sourceGroups, sourceGroups) &&
          const DeepCollectionEquality().equals(other.endpointId, endpointId) &&
          const DeepCollectionEquality().equals(other.isPaused, isPaused));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sourceGroups),
        const DeepCollectionEquality().hash(endpointId),
        const DeepCollectionEquality().hash(isPaused)
      ]);
}
