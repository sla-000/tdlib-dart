// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits a custom text composition style that was created by the current user
/// Returns [TextCompositionStyle]
@immutable
class EditTextCompositionStyle extends TdFunction {
  const EditTextCompositionStyle({
    required this.name,
    required this.title,
    required this.customEmojiId,
    required this.prompt,
    required this.showCreator,
  });

  /// [name] Name of the style
  final String name;

  /// [title] Title of the style;
  /// 1-getOption("text_composition_style_title_length_max") characters
  final String title;

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style
  final int customEmojiId;

  /// [prompt] Prompt that will be used for text composition;
  /// 1-getOption("text_composition_style_prompt_length_max") characters
  final String prompt;

  /// [showCreator] Pass true if the current user must be shown as the creator
  /// of the style
  final bool showCreator;

  static const String constructor = 'editTextCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'title': title,
        'custom_emoji_id': customEmojiId.toString(),
        'prompt': prompt,
        'show_creator': showCreator,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditTextCompositionStyle &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId) &&
          const DeepCollectionEquality().equals(other.prompt, prompt) &&
          const DeepCollectionEquality()
              .equals(other.showCreator, showCreator));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(customEmojiId),
        const DeepCollectionEquality().hash(prompt),
        const DeepCollectionEquality().hash(showCreator)
      ]);
}
