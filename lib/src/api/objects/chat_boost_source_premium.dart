// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user with Telegram Premium subscription or gifted Telegram Premium
/// boosted the chat
@immutable
class ChatBoostSourcePremium extends ChatBoostSource {
  const ChatBoostSourcePremium({
    required this.userId,
  });

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'chatBoostSourcePremium';

  static ChatBoostSourcePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourcePremium(
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
          other is ChatBoostSourcePremium &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
