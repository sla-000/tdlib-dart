// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An ordinary chat with a user
@immutable
class ChatTypePrivate extends ChatType {
  const ChatTypePrivate({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'chatTypePrivate';

  static ChatTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypePrivate(
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
          other is ChatTypePrivate &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
