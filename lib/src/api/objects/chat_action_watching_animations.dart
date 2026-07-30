// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is watching animations sent by the other party by clicking on an
/// animated emoji
@immutable
class ChatActionWatchingAnimations extends ChatAction {
  const ChatActionWatchingAnimations({
    required this.emoji,
  });

  /// [emoji] The animated emoji
  final String emoji;

  static const String constructor = 'chatActionWatchingAnimations';

  static ChatActionWatchingAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionWatchingAnimations(
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatActionWatchingAnimations &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(emoji)]);
}
