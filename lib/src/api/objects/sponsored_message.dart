// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a sponsored message
@immutable
class SponsoredMessage extends TdObject {
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.canBeReported,
    required this.content,
    required this.sponsor,
    required this.title,
    required this.buttonText,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.additionalInfo,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored
  /// message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended"
  /// instead of "sponsored"
  final bool isRecommended;

  /// [canBeReported] True, if the message can be reported to Telegram
  /// moderators through reportChatSponsoredMessage
  final bool canBeReported;

  /// [content] Content of the message. Currently, can be only of the types
  /// messageText, messageAnimation, messagePhoto, or messageVideo. Video
  /// messages can be viewed fullscreen. The content must be fully downloaded
  /// before the message is shown
  final MessageContent content;

  /// [sponsor] Information about the sponsor of the message
  final AdvertisementSponsor sponsor;

  /// [title] Title of the sponsored message
  final String title;

  /// [buttonText] Text for the message action button
  final String buttonText;

  /// [accentColorId] Identifier of the accent color for title, button text and
  /// message background
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// message background; 0 if none
  final int backgroundCustomEmojiId;

  /// [additionalInfo] If non-empty, additional information about the sponsored
  /// message to be shown along with the message
  final String additionalInfo;

  static const String constructor = 'sponsoredMessage';

  static SponsoredMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessage(
      messageId: json['message_id'] as int,
      isRecommended: json['is_recommended'] as bool,
      canBeReported: json['can_be_reported'] as bool,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      sponsor: AdvertisementSponsor.fromJson(
          json['sponsor'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      buttonText: json['button_text'] as String,
      accentColorId: json['accent_color_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
      additionalInfo: json['additional_info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'is_recommended': isRecommended,
        'can_be_reported': canBeReported,
        'content': content.toJson(),
        'sponsor': sponsor.toJson(),
        'title': title,
        'button_text': buttonText,
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'additional_info': additionalInfo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SponsoredMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.isRecommended, isRecommended) &&
          const DeepCollectionEquality()
              .equals(other.canBeReported, canBeReported) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality().equals(other.sponsor, sponsor) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.buttonText, buttonText) &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.backgroundCustomEmojiId, backgroundCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.additionalInfo, additionalInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(isRecommended),
        const DeepCollectionEquality().hash(canBeReported),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(sponsor),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(buttonText),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId),
        const DeepCollectionEquality().hash(additionalInfo)
      ]);
}
