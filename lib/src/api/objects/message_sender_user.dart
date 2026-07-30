// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message was sent by a known user
@immutable
class MessageSenderUser extends MessageSender {
  const MessageSenderUser({
    required this.userId,
  });

  /// [userId] Identifier of the user who sent the message
  final int userId;

  static const String constructor = 'messageSenderUser';

  static MessageSenderUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderUser(
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
          other is MessageSenderUser &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
