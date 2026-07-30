// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class InputMessageSticker extends InputMessageContent {
  const InputMessageSticker({
    required this.sticker,
    required this.emoji,
  });

  /// [sticker] Sticker to be sent
  final InputSticker sticker;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;

  static const String constructor = 'inputMessageSticker';

  static InputMessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageSticker(
      sticker: InputSticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(emoji)
      ]);
}
