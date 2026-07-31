// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App to open after a link of the type
/// internalLinkTypeWebApp is clicked
/// Returns [HttpUrl]
@immutable
class GetWebAppLinkUrl extends TdFunction {
  const GetWebAppLinkUrl({
    required this.chatId,
    required this.botUserId,
    required this.webAppShortName,
    required this.startParameter,
    required this.allowWriteAccess,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the link was clicked; pass 0 if
  /// none
  final int chatId;

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter from internalLinkTypeWebApp
  final String startParameter;

  /// [allowWriteAccess] Pass true if the current user allowed the bot to send
  /// them messages
  final bool allowWriteAccess;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'getWebAppLinkUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'web_app_short_name': webAppShortName,
        'start_parameter': startParameter,
        'allow_write_access': allowWriteAccess,
        'parameters': parameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetWebAppLinkUrl &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.webAppShortName, webAppShortName) &&
          const DeepCollectionEquality()
              .equals(other.startParameter, startParameter) &&
          const DeepCollectionEquality()
              .equals(other.allowWriteAccess, allowWriteAccess) &&
          const DeepCollectionEquality().equals(other.parameters, parameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(webAppShortName),
        const DeepCollectionEquality().hash(startParameter),
        const DeepCollectionEquality().hash(allowWriteAccess),
        const DeepCollectionEquality().hash(parameters)
      ]);
}
