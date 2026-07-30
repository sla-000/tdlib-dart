// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A suggested post was declined
@immutable
class MessageSuggestedPostDeclined extends MessageContent {
  const MessageSuggestedPostDeclined({
    required this.suggestedPostMessageId,
    required this.comment,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [comment] Comment added by administrator of the channel when the post was
  /// declined
  final String comment;

  static const String constructor = 'messageSuggestedPostDeclined';

  static MessageSuggestedPostDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostDeclined(
      suggestedPostMessageId: json['suggested_post_message_id'] as int,
      comment: json['comment'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'comment': comment,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSuggestedPostDeclined &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostMessageId, suggestedPostMessageId) &&
          const DeepCollectionEquality().equals(other.comment, comment));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(suggestedPostMessageId),
        const DeepCollectionEquality().hash(comment)
      ]);
}
