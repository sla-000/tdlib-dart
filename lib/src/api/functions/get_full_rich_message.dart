import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the full version of a rich message
/// Returns [RichMessage]
@immutable
class GetFullRichMessage extends TdFunction {
  const GetFullRichMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'getFullRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
