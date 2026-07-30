// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich message
@immutable
class InputMessageRichMessage extends InputMessageContent {
  const InputMessageRichMessage({
    required this.message,
    required this.clearDraft,
  });

  /// [message] The rich message to send
  final InputRichMessage message;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageRichMessage';

  static InputMessageRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageRichMessage(
      message:
          InputRichMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
      clearDraft: json['clear_draft'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageRichMessage &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality().equals(other.clearDraft, clearDraft));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(clearDraft)
      ]);
}
