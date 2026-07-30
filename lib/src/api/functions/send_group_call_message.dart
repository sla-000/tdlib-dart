// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a message to other participants of a group call. Requires
/// groupCall.can_send_messages right
/// Returns [Ok]
@immutable
class SendGroupCallMessage extends TdFunction {
  const SendGroupCallMessage({
    required this.groupCallId,
    required this.text,
    required this.paidMessageStarCount,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [text] Text of the message to send;
  /// 1-getOption("group_call_message_text_length_max") characters for
  /// non-live-stories; see updateGroupCallMessageLevels for live story
  /// restrictions, which depends on paid_message_star_count. Can't contain line
  /// feeds for live stories. Can contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, and DateTime entities for live
  /// stories
  final FormattedText text;

  /// [paidMessageStarCount] The number of Telegram Stars the user agreed to pay
  /// to send the message; for live stories only;
  /// 0-getOption("paid_group_call_message_star_count_max"). Must be 0 for
  /// messages sent to live stories posted by the current user
  final int paidMessageStarCount;

  static const String constructor = 'sendGroupCallMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'text': text.toJson(),
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendGroupCallMessage &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(paidMessageStarCount)
      ]);
}
