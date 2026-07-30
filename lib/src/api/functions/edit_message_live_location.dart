import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the message content of a live location. Messages can be edited for a
/// limited period of time specified in the live location. Returns the edited
/// message after the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageLiveLocation extends TdFunction {
  const EditMessageLiveLocation({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.location,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_be_edited
  /// to check whether the message can be edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [location] New live location of the message; pass null to stop sharing the
  /// live location. If the new live_period isn't set to 0x7FFFFFFF, then it
  /// must not exceed the current live_period by more than a day, and the live
  /// location expiration date must remain in the next 90 days
  final LiveLocation? location;

  static const String constructor = 'editMessageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'location': location?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
