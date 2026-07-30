import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the content of a live location in an inline message sent via a bot;
/// for bots only
/// Returns [Ok]
@immutable
class EditInlineMessageLiveLocation extends TdFunction {
  const EditInlineMessageLiveLocation({
    required this.inlineMessageId,
    this.replyMarkup,
    this.location,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [location] New live location of the message; pass null to stop sharing the
  /// live location. If the new live_period isn't set to 0x7FFFFFFF, then it
  /// must not exceed the current live_period by more than a day, and the live
  /// location expiration date must remain in the next 90 days
  final LiveLocation? location;

  static const String constructor = 'editInlineMessageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'location': location?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
