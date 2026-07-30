// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a style that can be used to compose a text
@immutable
class TextCompositionStyle extends TdObject {
  const TextCompositionStyle({
    required this.name,
    required this.customEmojiId,
    required this.title,
    required this.isCustom,
    required this.isCreator,
    required this.installCount,
    required this.prompt,
    required this.creatorUserId,
    this.englishExample,
  });

  /// [name] Name of the style
  final String name;

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style;
  /// 0 if none
  final int customEmojiId;

  /// [title] Title of the style in the user application's language
  final String title;

  /// [isCustom] True, if the style is created by a user
  final bool isCustom;

  /// [isCreator] True, if the user is creator of the style
  final bool isCreator;

  /// [installCount] Number of users that installed the style; for created
  /// custom styles only; 0 if unknown
  final int installCount;

  /// [prompt] Prompt of the style; for created custom styles only
  final String prompt;

  /// [creatorUserId] User identifier of the creator of the style; 0 if none of
  /// unknown
  final int creatorUserId;

  /// [englishExample] Example of the style usage in English; may be null if
  /// unknown
  final TextCompositionStyleExample? englishExample;

  static const String constructor = 'textCompositionStyle';

  static TextCompositionStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextCompositionStyle(
      name: json['name'] as String,
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
      title: json['title'] as String,
      isCustom: json['is_custom'] as bool,
      isCreator: json['is_creator'] as bool,
      installCount: json['install_count'] as int,
      prompt: json['prompt'] as String,
      creatorUserId: json['creator_user_id'] as int,
      englishExample: TextCompositionStyleExample.fromJson(
          json['english_example'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'custom_emoji_id': customEmojiId.toString(),
        'title': title,
        'is_custom': isCustom,
        'is_creator': isCreator,
        'install_count': installCount,
        'prompt': prompt,
        'creator_user_id': creatorUserId,
        'english_example': englishExample?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TextCompositionStyle &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.isCustom, isCustom) &&
          const DeepCollectionEquality().equals(other.isCreator, isCreator) &&
          const DeepCollectionEquality()
              .equals(other.installCount, installCount) &&
          const DeepCollectionEquality().equals(other.prompt, prompt) &&
          const DeepCollectionEquality()
              .equals(other.creatorUserId, creatorUserId) &&
          const DeepCollectionEquality()
              .equals(other.englishExample, englishExample));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(customEmojiId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(isCustom),
        const DeepCollectionEquality().hash(isCreator),
        const DeepCollectionEquality().hash(installCount),
        const DeepCollectionEquality().hash(prompt),
        const DeepCollectionEquality().hash(creatorUserId),
        const DeepCollectionEquality().hash(englishExample)
      ]);
}
