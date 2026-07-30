// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bot that can be managed by the current bot was created or updated; for
/// bots only
@immutable
class UpdateManagedBot extends Update {
  const UpdateManagedBot({
    required this.userId,
    required this.botUserId,
  });

  /// [userId] Identifier of the user who created the bot
  final int userId;

  /// [botUserId] Identifier of the created managed bot
  final int botUserId;

  static const String constructor = 'updateManagedBot';

  static UpdateManagedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateManagedBot(
      userId: (json['user_id'] as int?) ?? 0,
      botUserId: (json['bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateManagedBot &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(botUserId)
      ]);
}
