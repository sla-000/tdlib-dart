// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the name of a bot. Can be called only if userTypeBot.can_be_edited ==
/// true
/// Returns [Ok]
@immutable
class SetBotName extends TdFunction {
  const SetBotName({
    required this.botUserId,
    required this.languageCode,
    required this.name,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the name
  /// will be shown to all users for whose languages there is no dedicated name
  final String languageCode;

  /// [name] New bot's name on the specified language; 0-64 characters; must be
  /// non-empty if language code is empty
  final String name;

  static const String constructor = 'setBotName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBotName &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(name)
      ]);
}
