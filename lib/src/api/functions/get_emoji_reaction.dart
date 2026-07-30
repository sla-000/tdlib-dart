// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about an emoji reaction. Returns a 404 error if the
/// reaction is not found
/// Returns [EmojiReaction]
@immutable
class GetEmojiReaction extends TdFunction {
  const GetEmojiReaction({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  static const String constructor = 'getEmojiReaction';

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
          other is GetEmojiReaction &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(emoji)]);
}
