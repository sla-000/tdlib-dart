// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A business bot connected to the current user's account
@immutable
class SessionTypeConnectedBot extends SessionType {
  const SessionTypeConnectedBot({
    required this.botUserId,
  });

  /// [botUserId] User identifier of the bot. Use deleteBusinessConnectedBot to
  /// remove it or confirmBusinessConnectedBot to confirm it if it isn't
  /// confirmed yet
  final int botUserId;

  static const String constructor = 'sessionTypeConnectedBot';

  static SessionTypeConnectedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SessionTypeConnectedBot(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SessionTypeConnectedBot &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
