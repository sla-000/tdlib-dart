// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the list of keywords of a sticker. The sticker must belong to a
/// regular or custom emoji sticker set that is owned by the current user
/// Returns [Ok]
@immutable
class SetStickerKeywords extends TdFunction {
  const SetStickerKeywords({
    required this.sticker,
    required this.keywords,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [keywords] List of up to 20 keywords with total length up to 64
  /// characters, which can be used to find the sticker
  final List<String> keywords;

  static const String constructor = 'setStickerKeywords';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'keywords': keywords.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetStickerKeywords &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.keywords, keywords));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(keywords)
      ]);
}
