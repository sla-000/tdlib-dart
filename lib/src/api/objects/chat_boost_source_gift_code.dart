// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat created a Telegram Premium gift code for a user
@immutable
class ChatBoostSourceGiftCode extends ChatBoostSource {
  const ChatBoostSourceGiftCode({
    required this.userId,
    required this.giftCode,
  });

  /// [userId] Identifier of a user, for which the gift code was created
  final int userId;

  /// [giftCode] The created Telegram Premium gift code, which is known only if
  /// this is a gift code for the current user, or it has already been claimed
  final String giftCode;

  static const String constructor = 'chatBoostSourceGiftCode';

  static ChatBoostSourceGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourceGiftCode(
      userId: json['user_id'] as int,
      giftCode: json['gift_code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'gift_code': giftCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostSourceGiftCode &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.giftCode, giftCode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(giftCode)
      ]);
}
