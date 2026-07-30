// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a new media preview to the beginning of the list of media previews of
/// a bot. Returns the added preview after addition is completed server-side.
/// The total number of previews must not exceed
/// getOption("bot_media_preview_count_max") for the given language
/// Returns [BotMediaPreview]
@immutable
class AddBotMediaPreview extends TdFunction {
  const AddBotMediaPreview({
    required this.botUserId,
    required this.languageCode,
    required this.content,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must
  /// have the main Web App
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code for which preview is
  /// added. If empty, then the preview will be shown to all users for whose
  /// languages there are no dedicated previews. If non-empty, then there must
  /// be an official language pack of the same name, which is returned by
  /// getLocalizationTargetInfo
  final String languageCode;

  /// [content] Content of the added preview
  final InputStoryContent content;

  static const String constructor = 'addBotMediaPreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'language_code': languageCode,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddBotMediaPreview &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(content)
      ]);
}
