// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The category must be used by default for regular sticker selection. It may
/// contain greeting emoji category and premium stickers
@immutable
class EmojiCategoryTypeRegularStickers extends EmojiCategoryType {
  const EmojiCategoryTypeRegularStickers();

  static const String constructor = 'emojiCategoryTypeRegularStickers';

  static EmojiCategoryTypeRegularStickers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeRegularStickers();
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
      (other.runtimeType == runtimeType &&
          other is EmojiCategoryTypeRegularStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
