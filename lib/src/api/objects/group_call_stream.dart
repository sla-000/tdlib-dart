// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an available stream in a video chat or a live story
@immutable
class GroupCallStream extends TdObject {
  const GroupCallStream({
    required this.channelId,
    required this.scale,
    required this.timeOffset,
  });

  /// [channelId] Identifier of an audio/video channel
  final int channelId;

  /// [scale] Scale of segment durations in the stream. The duration is
  /// 1000/(2**scale) milliseconds
  final int scale;

  /// [timeOffset] Point in time when the stream currently ends; Unix timestamp
  /// in milliseconds
  final int timeOffset;

  static const String constructor = 'groupCallStream';

  static GroupCallStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallStream(
      channelId: json['channel_id'] as int,
      scale: json['scale'] as int,
      timeOffset: json['time_offset'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'channel_id': channelId,
        'scale': scale,
        'time_offset': timeOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallStream &&
          const DeepCollectionEquality().equals(other.channelId, channelId) &&
          const DeepCollectionEquality().equals(other.scale, scale) &&
          const DeepCollectionEquality().equals(other.timeOffset, timeOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(channelId),
        const DeepCollectionEquality().hash(scale),
        const DeepCollectionEquality().hash(timeOffset)
      ]);
}
