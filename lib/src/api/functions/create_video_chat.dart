// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a video chat (a group call bound to a chat); for basic groups,
/// supergroups and channels only; requires can_manage_video_chats
/// administrator right
/// Returns [GroupCallId]
@immutable
class CreateVideoChat extends TdFunction {
  const CreateVideoChat({
    required this.chatId,
    required this.title,
    required this.startDate,
    required this.isRtmpStream,
  });

  /// [chatId] Identifier of a chat in which the video chat will be created
  final int chatId;

  /// [title] Group call title; if empty, chat title will be used
  final String title;

  /// [startDate] Point in time (Unix timestamp) when the group call is expected
  /// to be started by an administrator; 0 to start the video chat immediately.
  /// The date must be at least 10 seconds and at most 8 days in the future
  final int startDate;

  /// [isRtmpStream] Pass true to create an RTMP stream instead of an ordinary
  /// video chat
  final bool isRtmpStream;

  static const String constructor = 'createVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        'start_date': startDate,
        'is_rtmp_stream': isRtmpStream,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateVideoChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality()
              .equals(other.isRtmpStream, isRtmpStream));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(isRtmpStream)
      ]);
}
