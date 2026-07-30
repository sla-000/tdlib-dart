import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A live story
@immutable
class StoryContentLive extends StoryContent {
  const StoryContentLive({
    required this.groupCallId,
    required this.isRtmpStream,
  });

  /// [groupCallId] Identifier of the corresponding group call. The group call
  /// can be received through the method getGroupCall
  final int groupCallId;

  /// [isRtmpStream] True, if the call is an RTMP stream instead of an ordinary
  /// group call
  final bool isRtmpStream;

  static const String constructor = 'storyContentLive';

  static StoryContentLive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentLive(
      groupCallId: json['group_call_id'] as int,
      isRtmpStream: json['is_rtmp_stream'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_rtmp_stream': isRtmpStream,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
