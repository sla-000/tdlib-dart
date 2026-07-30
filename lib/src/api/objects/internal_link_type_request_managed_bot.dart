// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a dialog for creating of a managed bot. Call
/// searchPublicChat with the given manager bot username. If the chat is
/// found, the chat is a chat with a bot and the bot has can_manage_bots ==
/// true, then show bot creation confirmation dialog with the given
/// suggested_bot_username and suggested_bot_name. If user agrees, call
/// createBot with via_link == true to create the bot
@immutable
class InternalLinkTypeRequestManagedBot extends InternalLinkType {
  const InternalLinkTypeRequestManagedBot({
    required this.managerBotUsername,
    required this.suggestedBotUsername,
    required this.suggestedBotName,
  });

  /// [managerBotUsername] Username of the bot which will manage the new bot
  final String managerBotUsername;

  /// [suggestedBotUsername] Suggested username for the bot; always ends with
  /// "bot" case-insensitive
  final String suggestedBotUsername;

  /// [suggestedBotName] Suggested name for the bot; may be empty if not
  /// specified
  final String suggestedBotName;

  static const String constructor = 'internalLinkTypeRequestManagedBot';

  static InternalLinkTypeRequestManagedBot? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeRequestManagedBot(
      managerBotUsername: (json['manager_bot_username'] as String?) ?? '',
      suggestedBotUsername: (json['suggested_bot_username'] as String?) ?? '',
      suggestedBotName: (json['suggested_bot_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'manager_bot_username': managerBotUsername,
        'suggested_bot_username': suggestedBotUsername,
        'suggested_bot_name': suggestedBotName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeRequestManagedBot &&
          const DeepCollectionEquality()
              .equals(other.managerBotUsername, managerBotUsername) &&
          const DeepCollectionEquality()
              .equals(other.suggestedBotUsername, suggestedBotUsername) &&
          const DeepCollectionEquality()
              .equals(other.suggestedBotName, suggestedBotName));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(managerBotUsername),
        const DeepCollectionEquality().hash(suggestedBotUsername),
        const DeepCollectionEquality().hash(suggestedBotName)
      ]);
}
