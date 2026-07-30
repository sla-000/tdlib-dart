import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a message draft
@immutable
class DraftMessage extends TdObject {
  const DraftMessage({
    this.replyTo,
    required this.date,
    required this.content,
    required this.effectId,
    this.suggestedPostInfo,
  });

  /// [replyTo] Information about the message to be replied;
  /// inputMessageReplyToStory is unsupported; may be null if none
  final InputMessageReplyTo? replyTo;

  /// [date] Point in time (Unix timestamp) when the draft was created
  final int date;

  /// [content] Content of the message draft
  final DraftMessageContent content;

  /// [effectId] Identifier of the effect to apply to the message when it is
  /// sent; 0 if none
  final int effectId;

  /// [suggestedPostInfo] Information about the suggested post; may be null if
  /// none
  final InputSuggestedPostInfo? suggestedPostInfo;

  static const String constructor = 'draftMessage';

  static DraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessage(
      replyTo: InputMessageReplyTo.fromJson(
          json['reply_to'] as Map<String, dynamic>?),
      date: json['date'] as int,
      content: DraftMessageContent.fromJson(
          json['content'] as Map<String, dynamic>?)!,
      effectId: int.tryParse(json['effect_id']) ?? 0,
      suggestedPostInfo: InputSuggestedPostInfo.fromJson(
          json['suggested_post_info'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reply_to': replyTo?.toJson(),
        'date': date,
        'content': content.toJson(),
        'effect_id': effectId.toString(),
        'suggested_post_info': suggestedPostInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
