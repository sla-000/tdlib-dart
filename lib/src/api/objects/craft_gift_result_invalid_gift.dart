// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Crafting isn't possible because one of the gifts isn't suitable for
/// crafting
@immutable
class CraftGiftResultInvalidGift extends CraftGiftResult {
  const CraftGiftResultInvalidGift();

  static const String constructor = 'craftGiftResultInvalidGift';

  static CraftGiftResultInvalidGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CraftGiftResultInvalidGift();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CraftGiftResultInvalidGift);

  @override
  int get hashCode => runtimeType.hashCode;
}
