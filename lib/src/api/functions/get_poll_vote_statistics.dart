import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns statistics of poll votes in a poll
/// Returns [PollVoteStatistics]
@immutable
class GetPollVoteStatistics extends TdFunction {
  const GetPollVoteStatistics({
    required this.chatId,
    required this.messageId,
    required this.isDark,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll. Use
  /// messageProperties.can_get_poll_vote_statistics to check whether the method
  /// can be used for a message
  final int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getPollVoteStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
