// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a connection of the bot with a business account
@immutable
class BusinessConnection extends TdObject {
  const BusinessConnection({
    required this.id,
    required this.userId,
    required this.userChatId,
    required this.date,
    this.rights,
    required this.isEnabled,
  });

  /// [id] Unique identifier of the connection
  final String id;

  /// [userId] Identifier of the business user who created the connection
  final int userId;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [date] Point in time (Unix timestamp) when the connection was established
  final int date;

  /// [rights] Rights of the bot; may be null if the connection was disabled
  final BusinessBotRights? rights;

  /// [isEnabled] True, if the connection is enabled; false otherwise
  final bool isEnabled;

  static const String constructor = 'businessConnection';

  static BusinessConnection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnection(
      id: json['id'] as String,
      userId: json['user_id'] as int,
      userChatId: json['user_chat_id'] as int,
      date: json['date'] as int,
      rights:
          BusinessBotRights.fromJson(json['rights'] as Map<String, dynamic>?),
      isEnabled: json['is_enabled'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_id': userId,
        'user_chat_id': userChatId,
        'date': date,
        'rights': rights?.toJson(),
        'is_enabled': isEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessConnection &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.userChatId, userChatId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.rights, rights) &&
          const DeepCollectionEquality().equals(other.isEnabled, isEnabled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(userChatId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(rights),
        const DeepCollectionEquality().hash(isEnabled)
      ]);
}
