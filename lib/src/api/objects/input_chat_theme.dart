import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme to set
@immutable
abstract class InputChatTheme extends TdObject {
  const InputChatTheme();

  static const String constructor = 'inputChatTheme';

  /// Inherited by:
  /// [InputChatThemeEmoji]
  /// [InputChatThemeGift]
  static InputChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputChatThemeEmoji.constructor:
        return InputChatThemeEmoji.fromJson(json);
      case InputChatThemeGift.constructor:
        return InputChatThemeGift.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
