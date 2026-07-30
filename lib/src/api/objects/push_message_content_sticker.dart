// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a sticker
@immutable
class PushMessageContentSticker extends PushMessageContent {
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });

  /// [sticker] Message content; may be null
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentSticker';

  static PushMessageContentSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentSticker(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      emoji: (json['emoji'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker?.toJson(),
        'emoji': emoji,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.emoji, emoji) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(emoji),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
