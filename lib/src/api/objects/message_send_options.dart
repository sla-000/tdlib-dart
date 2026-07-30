// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Options to be used when a message is sent
@immutable
class MessageSendOptions extends TdObject {
  const MessageSendOptions({
    this.suggestedPostInfo,
    required this.disableNotification,
    required this.fromBackground,
    this.protectContent,
    this.allowPaidBroadcast,
    required this.paidMessageStarCount,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
    required this.effectId,
    required this.sendingId,
    required this.onlyPreview,
  });

  /// [suggestedPostInfo] Information about the suggested post; pass null if
  /// none. For messages to channel direct messages chat only. Applicable only
  /// to sendMessage and addOffer
  final InputSuggestedPostInfo? suggestedPostInfo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving; for bots only
  final bool? protectContent;

  /// [allowPaidBroadcast] Pass true to allow the message to ignore regular
  /// broadcast limits for a small fee; for bots only
  final bool? allowPaidBroadcast;

  /// [paidMessageStarCount] The number of Telegram Stars the user agreed to pay
  /// to send the messages
  final int paidMessageStarCount;

  /// [updateOrderOfInstalledStickerSets] Pass true if the user explicitly
  /// chosen a sticker or a custom emoji from an installed sticker set;
  /// applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// [schedulingState] Message scheduling state; pass null to send message
  /// immediately. Messages sent to a secret chat, to a chat with paid messages,
  /// to a channel direct messages chat, live location messages and
  /// self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  /// [effectId] Identifier of the effect to apply to the message; pass 0 if
  /// none; applicable only to sendMessage, sendMessageAlbum in private chats
  /// and forwardMessages with one message to private chats
  final int effectId;

  /// [sendingId] Non-persistent identifier, which will be returned back in
  /// messageSendingStatePending object and can be used to match sent messages
  /// and corresponding updateNewMessage updates
  final int sendingId;

  /// [onlyPreview] Pass true to get a fake message instead of actually sending
  /// them
  final bool onlyPreview;

  static const String constructor = 'messageSendOptions';

  static MessageSendOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendOptions(
      suggestedPostInfo: InputSuggestedPostInfo.fromJson(
          json['suggested_post_info'] as Map<String, dynamic>?),
      disableNotification: (json['disable_notification'] as bool?) ?? false,
      fromBackground: (json['from_background'] as bool?) ?? false,
      protectContent: json['protect_content'] as bool?,
      allowPaidBroadcast: json['allow_paid_broadcast'] as bool?,
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
      updateOrderOfInstalledStickerSets:
          (json['update_order_of_installed_sticker_sets'] as bool?) ?? false,
      schedulingState: MessageSchedulingState.fromJson(
          json['scheduling_state'] as Map<String, dynamic>?),
      effectId: (json['effect_id'] is int
              ? json['effect_id'] as int
              : int.tryParse(json['effect_id']?.toString() ?? '')) ??
          0,
      sendingId: (json['sending_id'] as int?) ?? 0,
      onlyPreview: (json['only_preview'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_info': suggestedPostInfo?.toJson(),
        'disable_notification': disableNotification,
        'from_background': fromBackground,
        'protect_content': protectContent,
        'allow_paid_broadcast': allowPaidBroadcast,
        'paid_message_star_count': paidMessageStarCount,
        'update_order_of_installed_sticker_sets':
            updateOrderOfInstalledStickerSets,
        'scheduling_state': schedulingState?.toJson(),
        'effect_id': effectId.toString(),
        'sending_id': sendingId,
        'only_preview': onlyPreview,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSendOptions &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostInfo, suggestedPostInfo) &&
          const DeepCollectionEquality()
              .equals(other.disableNotification, disableNotification) &&
          const DeepCollectionEquality()
              .equals(other.fromBackground, fromBackground) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent) &&
          const DeepCollectionEquality()
              .equals(other.allowPaidBroadcast, allowPaidBroadcast) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount) &&
          const DeepCollectionEquality().equals(
              other.updateOrderOfInstalledStickerSets,
              updateOrderOfInstalledStickerSets) &&
          const DeepCollectionEquality()
              .equals(other.schedulingState, schedulingState) &&
          const DeepCollectionEquality().equals(other.effectId, effectId) &&
          const DeepCollectionEquality().equals(other.sendingId, sendingId) &&
          const DeepCollectionEquality()
              .equals(other.onlyPreview, onlyPreview));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(suggestedPostInfo),
        const DeepCollectionEquality().hash(disableNotification),
        const DeepCollectionEquality().hash(fromBackground),
        const DeepCollectionEquality().hash(protectContent),
        const DeepCollectionEquality().hash(allowPaidBroadcast),
        const DeepCollectionEquality().hash(paidMessageStarCount),
        const DeepCollectionEquality().hash(updateOrderOfInstalledStickerSets),
        const DeepCollectionEquality().hash(schedulingState),
        const DeepCollectionEquality().hash(effectId),
        const DeepCollectionEquality().hash(sendingId),
        const DeepCollectionEquality().hash(onlyPreview)
      ]);
}
