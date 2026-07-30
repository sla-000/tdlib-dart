import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds an option to a poll
/// Returns [Ok]
@immutable
class AddPollOption extends TdFunction {
  const AddPollOption({
    required this.chatId,
    required this.messageId,
    required this.option,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll. Use
  /// messagePoll.can_add_option to check whether an option can be added
  final int messageId;

  /// [option] The new option
  final InputPollOption option;

  static const String constructor = 'addPollOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option': option.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
