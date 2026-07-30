// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns TGS stickers with generic animations for custom emoji reactions
/// Returns [Stickers]
@immutable
class GetCustomEmojiReactionAnimations extends TdFunction {
  const GetCustomEmojiReactionAnimations();

  static const String constructor = 'getCustomEmojiReactionAnimations';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetCustomEmojiReactionAnimations);

  @override
  int get hashCode => runtimeType.hashCode;
}
