// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an animated emoji corresponding to a given emoji. Returns a 404
/// error if the emoji has no animated emoji
/// Returns [AnimatedEmoji]
@immutable
class GetAnimatedEmoji extends TdFunction {
  const GetAnimatedEmoji({
    required this.emoji,
  });

  /// [emoji] The emoji
  final String emoji;

  static const String constructor = 'getAnimatedEmoji';

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
          other is GetAnimatedEmoji &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(emoji)]);
}
