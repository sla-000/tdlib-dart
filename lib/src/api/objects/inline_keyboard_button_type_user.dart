// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button with a user reference to be handled in the same way as
/// textEntityTypeMentionName entities
@immutable
class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeUser({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'inlineKeyboardButtonTypeUser';

  static InlineKeyboardButtonTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUser(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineKeyboardButtonTypeUser &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
