// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the caption of a message sent on behalf of a business account; for
/// bots only
/// Returns [BusinessMessage]
@immutable
class EditBusinessMessageCaption extends TdFunction {
  const EditBusinessMessageCaption({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.caption,
    required this.showCaptionAboveMedia,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; pass null to remove caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] Pass true to show the caption above the media;
  /// otherwise, the caption will be shown below the media. May be true only for
  /// animation, photo, and video messages
  final bool showCaptionAboveMedia;

  static const String constructor = 'editBusinessMessageCaption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'caption': caption?.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditBusinessMessageCaption &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.showCaptionAboveMedia, showCaptionAboveMedia));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(showCaptionAboveMedia)
      ]);
}
