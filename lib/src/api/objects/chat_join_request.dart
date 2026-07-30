// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a user who sent a join request and waits for administrator
/// approval
@immutable
class ChatJoinRequest extends TdObject {
  const ChatJoinRequest({
    required this.userId,
    required this.date,
    required this.bio,
  });

  /// [userId] User identifier
  final int userId;

  /// [date] Point in time (Unix timestamp) when the user sent the join request
  final int date;

  /// [bio] A short bio of the user
  final String bio;

  static const String constructor = 'chatJoinRequest';

  static ChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequest(
      userId: json['user_id'] as int,
      date: json['date'] as int,
      bio: json['bio'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'date': date,
        'bio': bio,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatJoinRequest &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.bio, bio));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(bio)
      ]);
}
