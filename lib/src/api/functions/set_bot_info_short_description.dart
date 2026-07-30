// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the text shown on a bot's profile page and sent together with the
/// link when users share the bot. Can be called only if
/// userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class SetBotInfoShortDescription extends TdFunction {
  const SetBotInfoShortDescription({
    required this.botUserId,
    required this.languageCode,
    required this.shortDescription,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the short
  /// description will be shown to all users for whose languages there is no
  /// dedicated description
  final String languageCode;

  /// [shortDescription] New bot's short description on the specified language
  final String shortDescription;

  static const String constructor = 'setBotInfoShortDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'short_description': shortDescription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBotInfoShortDescription &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality()
              .equals(other.shortDescription, shortDescription));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(shortDescription)
      ]);
}
