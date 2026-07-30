import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A theme based on an emoji
@immutable
class InputChatThemeEmoji extends InputChatTheme {
  const InputChatThemeEmoji({
    required this.name,
  });

  /// [name] Name of the theme
  final String name;

  static const String constructor = 'inputChatThemeEmoji';

  static InputChatThemeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatThemeEmoji(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
