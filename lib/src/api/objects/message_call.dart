import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      uniqueId: int.tryParse(json['unique_id']) ?? 0,
      isVideo: json['is_video'] as bool,
      discardReason: CallDiscardReason.fromJson(
          json['discard_reason'] as Map<String, dynamic>?)!,
      duration: json['duration'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
