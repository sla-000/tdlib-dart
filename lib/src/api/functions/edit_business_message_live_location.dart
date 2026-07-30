// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the content of a live location in a message sent on behalf of a
/// business account; for bots only
/// Returns [BusinessMessage]
@immutable
class EditBusinessMessageLiveLocation extends TdFunction {
  const EditBusinessMessageLiveLocation({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.location,
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

  /// [location] New live location of the message; pass null to stop sharing the
  /// live location. If the new live_period isn't set to 0x7FFFFFFF, then it
  /// must not exceed the current live_period by more than a day, and the live
  /// location expiration date must remain in the next 90 days
  final LiveLocation? location;

  static const String constructor = 'editBusinessMessageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'location': location?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditBusinessMessageLiveLocation &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality().equals(other.location, location));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(location)
      ]);
}
