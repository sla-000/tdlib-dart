// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is a regular sticker
@immutable
class StickerFullTypeRegular extends StickerFullType {
  const StickerFullTypeRegular({
    this.premiumAnimation,
  });

  /// [premiumAnimation] Premium animation of the sticker; may be null. If
  /// present, only Telegram Premium users can use the sticker
  final File? premiumAnimation;

  static const String constructor = 'stickerFullTypeRegular';

  static StickerFullTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeRegular(
      premiumAnimation:
          File.fromJson(json['premium_animation'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'premium_animation': premiumAnimation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StickerFullTypeRegular &&
          const DeepCollectionEquality()
              .equals(other.premiumAnimation, premiumAnimation));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(premiumAnimation)]);
}
