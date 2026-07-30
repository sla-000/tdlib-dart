// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a suggested name for a new sticker set with a given title
/// Returns [Text]
@immutable
class GetSuggestedStickerSetName extends TdFunction {
  const GetSuggestedStickerSetName({
    required this.title,
  });

  /// [title] Sticker set title; 1-64 characters
  final String title;

  static const String constructor = 'getSuggestedStickerSetName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSuggestedStickerSetName &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(title)]);
}
