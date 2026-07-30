// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with information about an ended call
@immutable
class MessageCall extends MessageContent {
  const MessageCall({
    required this.uniqueId,
    required this.isVideo,
    required this.discardReason,
    required this.duration,
  });

  /// [uniqueId] Persistent unique call identifier; 0 for calls from other
  /// devices, which can't be passed as inputCallFromMessage
  final int uniqueId;

  /// [isVideo] True, if the call was a video call
  final bool isVideo;

  /// [discardReason] Reason why the call was discarded
  final CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  final int duration;

  static const String constructor = 'messageCall';

  static MessageCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCall(
      uniqueId: (json['unique_id'] is int
              ? json['unique_id'] as int
              : int.tryParse(json['unique_id']?.toString() ?? '')) ??
          0,
      isVideo: (json['is_video'] as bool?) ?? false,
      discardReason: CallDiscardReason.fromJson(
          json['discard_reason'] as Map<String, dynamic>?)!,
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'unique_id': uniqueId.toString(),
        'is_video': isVideo,
        'discard_reason': discardReason.toJson(),
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageCall &&
          const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
          const DeepCollectionEquality().equals(other.isVideo, isVideo) &&
          const DeepCollectionEquality()
              .equals(other.discardReason, discardReason) &&
          const DeepCollectionEquality().equals(other.duration, duration));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(uniqueId),
        const DeepCollectionEquality().hash(isVideo),
        const DeepCollectionEquality().hash(discardReason),
        const DeepCollectionEquality().hash(duration)
      ]);
}
