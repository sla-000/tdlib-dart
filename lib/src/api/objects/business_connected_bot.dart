// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a bot connected to a business account
@immutable
class BusinessConnectedBot extends TdObject {
  const BusinessConnectedBot({
    required this.botUserId,
    required this.recipients,
    required this.rights,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [recipients] Private chats that will be accessible to the bot
  final BusinessRecipients recipients;

  /// [rights] Rights of the bot
  final BusinessBotRights rights;

  static const String constructor = 'businessConnectedBot';

  static BusinessConnectedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnectedBot(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      recipients: BusinessRecipients.fromJson(
          json['recipients'] as Map<String, dynamic>?)!,
      rights:
          BusinessBotRights.fromJson(json['rights'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'recipients': recipients.toJson(),
        'rights': rights.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessConnectedBot &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.recipients, recipients) &&
          const DeepCollectionEquality().equals(other.rights, rights));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(recipients),
        const DeepCollectionEquality().hash(rights)
      ]);
}
