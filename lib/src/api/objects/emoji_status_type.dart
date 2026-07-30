// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of emoji status
@immutable
abstract class EmojiStatusType extends TdObject {
  const EmojiStatusType();

  static const String constructor = 'emojiStatusType';

  /// Inherited by:
  /// [EmojiStatusTypeCustomEmoji]
  /// [EmojiStatusTypeUpgradedGift]
  static EmojiStatusType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiStatusTypeCustomEmoji.constructor:
        return EmojiStatusTypeCustomEmoji.fromJson(json);
      case EmojiStatusTypeUpgradedGift.constructor:
        return EmojiStatusTypeUpgradedGift.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is EmojiStatusType);

  @override
  int get hashCode => runtimeType.hashCode;
}
