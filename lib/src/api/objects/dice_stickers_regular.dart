// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular animated sticker
@immutable
class DiceStickersRegular extends DiceStickers {
  const DiceStickersRegular({
    required this.sticker,
  });

  /// [sticker] The animated sticker with the dice animation
  final Sticker sticker;

  static const String constructor = 'diceStickersRegular';

  static DiceStickersRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersRegular(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DiceStickersRegular &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sticker)]);
}
