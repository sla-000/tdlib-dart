// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a forum topic icon
@immutable
class ForumTopicIcon extends TdObject {
  const ForumTopicIcon({
    required this.color,
    required this.customEmojiId,
  });

  /// [color] Color of the topic icon in RGB format
  final int color;

  /// [customEmojiId] Unique identifier of the custom emoji shown on the topic
  /// icon; 0 if none
  final int customEmojiId;

  static const String constructor = 'forumTopicIcon';

  static ForumTopicIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopicIcon(
      color: json['color'] as int,
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'color': color,
        'custom_emoji_id': customEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ForumTopicIcon &&
          const DeepCollectionEquality().equals(other.color, color) &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(color),
        const DeepCollectionEquality().hash(customEmojiId)
      ]);
}
