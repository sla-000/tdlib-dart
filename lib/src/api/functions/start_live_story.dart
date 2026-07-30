// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Starts a new live story on behalf of a chat; requires can_post_stories
/// administrator right for channel chats
/// Returns [StartLiveStoryResult]
@immutable
class StartLiveStory extends TdFunction {
  const StartLiveStory({
    required this.chatId,
    required this.privacySettings,
    required this.protectContent,
    required this.isRtmpStream,
    required this.enableMessages,
    required this.paidMessageStarCount,
  });

  /// [chatId] Identifier of the chat that will start the live story. Pass Saved
  /// Messages chat identifier when starting a live story on behalf of the
  /// current user, or a channel chat identifier
  final int chatId;

  /// [privacySettings] The privacy settings for the story; ignored for stories
  /// posted on behalf of channel chats
  final StoryPrivacySettings privacySettings;

  /// [protectContent] Pass true if the content of the story must be protected
  /// from screenshotting
  final bool protectContent;

  /// [isRtmpStream] Pass true to create an RTMP stream instead of an ordinary
  /// group call
  final bool isRtmpStream;

  /// [enableMessages] Pass true to allow viewers of the story to send messages
  final bool enableMessages;

  /// [paidMessageStarCount] The minimum number of Telegram Stars that must be
  /// paid by viewers for each sent message to the call;
  /// 0-getOption("paid_group_call_message_star_count_max")
  final int paidMessageStarCount;

  static const String constructor = 'startLiveStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'privacy_settings': privacySettings.toJson(),
        'protect_content': protectContent,
        'is_rtmp_stream': isRtmpStream,
        'enable_messages': enableMessages,
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StartLiveStory &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.privacySettings, privacySettings) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent) &&
          const DeepCollectionEquality()
              .equals(other.isRtmpStream, isRtmpStream) &&
          const DeepCollectionEquality()
              .equals(other.enableMessages, enableMessages) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(privacySettings),
        const DeepCollectionEquality().hash(protectContent),
        const DeepCollectionEquality().hash(isRtmpStream),
        const DeepCollectionEquality().hash(enableMessages),
        const DeepCollectionEquality().hash(paidMessageStarCount)
      ]);
}
