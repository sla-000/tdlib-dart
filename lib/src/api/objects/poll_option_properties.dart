import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains properties of a poll option and describes actions that can be
/// done with the option right now
@immutable
class PollOptionProperties extends TdObject {
  const PollOptionProperties({
    required this.canBeDeleted,
    required this.canBeReplied,
    required this.canBeRepliedInAnotherChat,
    required this.canGetLink,
  });

  /// [canBeDeleted] True, if the option can be deleted using deletePollOption
  final bool canBeDeleted;

  /// [canBeReplied] True, if the poll option can be replied in the same chat
  /// and forum topic using inputMessageReplyToMessage
  final bool canBeReplied;

  /// [canBeRepliedInAnotherChat] True, if the poll option can be replied in
  /// another chat or forum topic using inputMessageReplyToExternalMessage
  final bool canBeRepliedInAnotherChat;

  /// [canGetLink] True, if a link can be generated for the poll option using
  /// getMessageLink
  final bool canGetLink;

  static const String constructor = 'pollOptionProperties';

  static PollOptionProperties? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollOptionProperties(
      canBeDeleted: json['can_be_deleted'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'] as bool,
      canGetLink: json['can_get_link'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_deleted': canBeDeleted,
        'can_be_replied': canBeReplied,
        'can_be_replied_in_another_chat': canBeRepliedInAnotherChat,
        'can_get_link': canGetLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
