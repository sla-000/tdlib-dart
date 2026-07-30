// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the text shown on a bot's profile page and sent together with the
/// link when users share the bot in the given language. Can be called only if
/// userTypeBot.can_be_edited == true
/// Returns [Text]
@immutable
class GetBotInfoShortDescription extends TdFunction {
  const GetBotInfoShortDescription({
    required this.botUserId,
    required this.languageCode,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code or an empty string
  final String languageCode;

  static const String constructor = 'getBotInfoShortDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBotInfoShortDescription &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(languageCode)
      ]);
}
