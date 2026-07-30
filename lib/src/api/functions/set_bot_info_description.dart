// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the text shown in the chat with a bot if the chat is empty. Can be
/// called only if userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class SetBotInfoDescription extends TdFunction {
  const SetBotInfoDescription({
    required this.botUserId,
    required this.languageCode,
    required this.description,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the
  /// description will be shown to all users for whose languages there is no
  /// dedicated description
  final String languageCode;

  /// param_[description] New bot's description on the specified language
  final String description;

  static const String constructor = 'setBotInfoDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBotInfoDescription &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(description)
      ]);
}
