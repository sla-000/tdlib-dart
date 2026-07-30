// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message was originally sent by a known user
@immutable
class MessageOriginUser extends MessageOrigin {
  const MessageOriginUser({
    required this.senderUserId,
  });

  /// [senderUserId] Identifier of the user who originally sent the message
  final int senderUserId;

  static const String constructor = 'messageOriginUser';

  static MessageOriginUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginUser(
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageOriginUser &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(senderUserId)]);
}
