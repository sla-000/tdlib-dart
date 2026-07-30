// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with an animated emoji
@immutable
class MessageAnimatedEmoji extends MessageContent {
  const MessageAnimatedEmoji({
    required this.animatedEmoji,
    required this.emoji,
  });

  /// [animatedEmoji] The animated emoji
  final AnimatedEmoji animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;

  static const String constructor = 'messageAnimatedEmoji';

  static MessageAnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimatedEmoji(
      animatedEmoji: AnimatedEmoji.fromJson(
          json['animated_emoji'] as Map<String, dynamic>?)!,
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animated_emoji': animatedEmoji.toJson(),
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageAnimatedEmoji &&
          const DeepCollectionEquality()
              .equals(other.animatedEmoji, animatedEmoji) &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(animatedEmoji),
        const DeepCollectionEquality().hash(emoji)
      ]);
}
