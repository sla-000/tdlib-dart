import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a bot which will be managed by another bot. Returns the created
/// bot. May return an error with a message "BOT_CREATE_LIMIT_EXCEEDED" if the
/// user already owns the maximum allowed number of bots as per
/// getOption("owned_bot_count_max"). An internal link
/// "https://t.me/BotFather?start=deletebot" can be processed to handle the
/// error
/// Returns [User]
@immutable
class CreateBot extends TdFunction {
  const CreateBot({
    required this.managerBotUserId,
    required this.name,
    required this.username,
    required this.viaLink,
  });

  /// [managerBotUserId] Identifier of the bot that will manage the created bot
  final int managerBotUserId;

  /// [name] Name of the bot; 1-64 characters
  final String name;

  /// [username] Username of the bot. The username must end with "bot". Use
  /// checkBotUsername to find whether the name is suitable
  final String username;

  /// [viaLink] Pass true if the bot is created from an
  /// internalLinkTypeRequestManagedBot link
  final bool viaLink;

  static const String constructor = 'createBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'manager_bot_user_id': managerBotUserId,
        'name': name,
        'username': username,
        'via_link': viaLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
