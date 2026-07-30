import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes an option from a poll
/// Returns [Ok]
@immutable
class DeletePollOption extends TdFunction {
  const DeletePollOption({
    required this.chatId,
    required this.messageId,
    required this.optionId,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionId] Unique identifier of the option. Use
  /// pollOptionProperties.can_be_deleted to check whether the option can be
  /// deleted by the user
  final String optionId;

  static const String constructor = 'deletePollOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_id': optionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
