// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji for the current user; for
/// Telegram Premium users only
/// Returns [Ok]
@immutable
class SetAccentColor extends TdFunction {
  const SetAccentColor({
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [accentColorId] Identifier of the accent color to use
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  static const String constructor = 'setAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAccentColor &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.backgroundCustomEmojiId, backgroundCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId)
      ]);
}
