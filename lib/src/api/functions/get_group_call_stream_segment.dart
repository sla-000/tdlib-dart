// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a file with a segment of a video chat or live story in a modified
/// OGG format for audio or MPEG-4 format for video
/// Returns [Data]
@immutable
class GetGroupCallStreamSegment extends TdFunction {
  const GetGroupCallStreamSegment({
    required this.groupCallId,
    required this.timeOffset,
    required this.scale,
    required this.channelId,
    this.videoQuality,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [timeOffset] Point in time when the stream segment begins; Unix timestamp
  /// in milliseconds
  final int timeOffset;

  /// [scale] Segment duration scale; 0-1. Segment's duration is 1000/(2**scale)
  /// milliseconds
  final int scale;

  /// [channelId] Identifier of an audio/video channel to get as received from
  /// tgcalls
  final int channelId;

  /// [videoQuality] Video quality as received from tgcalls; pass null to get
  /// the worst available quality
  final GroupCallVideoQuality? videoQuality;

  static const String constructor = 'getGroupCallStreamSegment';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'time_offset': timeOffset,
        'scale': scale,
        'channel_id': channelId,
        'video_quality': videoQuality?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGroupCallStreamSegment &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.timeOffset, timeOffset) &&
          const DeepCollectionEquality().equals(other.scale, scale) &&
          const DeepCollectionEquality().equals(other.channelId, channelId) &&
          const DeepCollectionEquality()
              .equals(other.videoQuality, videoQuality));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(timeOffset),
        const DeepCollectionEquality().hash(scale),
        const DeepCollectionEquality().hash(channelId),
        const DeepCollectionEquality().hash(videoQuality)
      ]);
}
