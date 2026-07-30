import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat member tag has been changed
@immutable
class ChatEventMemberTagChanged extends ChatEventAction {
  const ChatEventMemberTagChanged({
    required this.userId,
    required this.oldTag,
    required this.newTag,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldTag] Previous tag of the chat member
  final String oldTag;

  /// [newTag] New tag of the chat member
  final String newTag;

  static const String constructor = 'chatEventMemberTagChanged';

  static ChatEventMemberTagChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberTagChanged(
      userId: json['user_id'] as int,
      oldTag: json['old_tag'] as String,
      newTag: json['new_tag'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'old_tag': oldTag,
        'new_tag': newTag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
