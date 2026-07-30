// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text shows instead of a raw mention of the user (e.g., when the user has
/// no username)
@immutable
class TextEntityTypeMentionName extends TextEntityType {
  const TextEntityTypeMentionName({
    required this.userId,
  });

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String constructor = 'textEntityTypeMentionName';

  static TextEntityTypeMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMentionName(
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
          other is TextEntityTypeMentionName &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
