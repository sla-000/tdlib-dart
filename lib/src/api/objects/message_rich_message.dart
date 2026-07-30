import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich message; the message can have multiple media of the same type, all
/// of which must be shown in the corresponding profile tab
@immutable
class MessageRichMessage extends MessageContent {
  const MessageRichMessage({
    required this.message,
  });

  /// [message] The rich message
  final RichMessage message;

  static const String constructor = 'messageRichMessage';

  static MessageRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageRichMessage(
      message: RichMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
