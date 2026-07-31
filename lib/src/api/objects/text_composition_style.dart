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
  });

  /// [name] Name of the style
  final String name;

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style
  final int customEmojiId;

  /// [title] Title of the style in the user application's language
  final String title;

  static const String constructor = 'textCompositionStyle';

  static TextCompositionStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextCompositionStyle(
      name: (json['name'] as String?) ?? '',
      customEmojiId: (json['custom_emoji_id'] is int
              ? json['custom_emoji_id'] as int
              : int.tryParse(json['custom_emoji_id']?.toString() ?? '')) ??
          0,
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'custom_emoji_id': customEmojiId.toString(),
        'title': title,
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
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(customEmojiId),
        const DeepCollectionEquality().hash(title)
      ]);
}
