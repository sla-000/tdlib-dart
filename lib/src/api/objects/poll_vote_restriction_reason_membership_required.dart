import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must be a member of the chat for at least a day to vote
@immutable
class PollVoteRestrictionReasonMembershipRequired
    extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonMembershipRequired({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat which must be joined for at least a day
  /// before the user can vote
  final int chatId;

  static const String constructor =
      'pollVoteRestrictionReasonMembershipRequired';

  static PollVoteRestrictionReasonMembershipRequired? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoteRestrictionReasonMembershipRequired(
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
