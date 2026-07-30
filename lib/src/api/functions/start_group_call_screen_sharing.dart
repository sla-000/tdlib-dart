// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Starts screen sharing in a joined group call; not supported in live
/// stories. Returns join response payload for tgcalls
/// Returns [Text]
@immutable
class StartGroupCallScreenSharing extends TdFunction {
  const StartGroupCallScreenSharing({
    required this.groupCallId,
    required this.audioSourceId,
    required this.payload,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSourceId] Screen sharing audio channel synchronization source
  /// identifier; received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  static const String constructor = 'startGroupCallScreenSharing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'audio_source_id': audioSourceId,
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StartGroupCallScreenSharing &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.audioSourceId, audioSourceId) &&
          const DeepCollectionEquality().equals(other.payload, payload));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(audioSourceId),
        const DeepCollectionEquality().hash(payload)
      ]);
}
