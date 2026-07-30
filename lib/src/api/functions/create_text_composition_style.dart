import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a custom text composition style. May return an error with a
/// message "TONES_SAVED_TOO_MANY" if the maximum number of added custom
/// styles has been reached
/// Returns [TextCompositionStyle]
@immutable
class CreateTextCompositionStyle extends TdFunction {
  const CreateTextCompositionStyle({
    required this.title,
    required this.customEmojiId,
    required this.prompt,
    required this.showCreator,
  });

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

  static const String constructor = 'createTextCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'custom_emoji_id': customEmojiId,
        'prompt': prompt,
        'show_creator': showCreator,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
