// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The category contains premium stickers that must be found by
/// getPremiumStickers
@immutable
class EmojiCategorySourcePremium extends EmojiCategorySource {
  const EmojiCategorySourcePremium();

  static const String constructor = 'emojiCategorySourcePremium';

  static EmojiCategorySourcePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategorySourcePremium();
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
      (other.runtimeType == runtimeType && other is EmojiCategorySourcePremium);

  @override
  int get hashCode => runtimeType.hashCode;
}
