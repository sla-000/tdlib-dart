// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Replaces the current RTMP URL for streaming to a live story; requires
/// owner privileges for channel chats
/// Returns [RtmpUrl]
@immutable
class ReplaceLiveStoryRtmpUrl extends TdFunction {
  const ReplaceLiveStoryRtmpUrl({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'replaceLiveStoryRtmpUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReplaceLiveStoryRtmpUrl &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
