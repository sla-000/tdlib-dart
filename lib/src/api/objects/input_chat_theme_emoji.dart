// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
      name: (json['name'] as String?) ?? '',
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputChatThemeEmoji &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
