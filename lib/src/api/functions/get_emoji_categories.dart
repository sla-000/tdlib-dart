// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns available emoji categories
/// Returns [EmojiCategories]
@immutable
class GetEmojiCategories extends TdFunction {
  const GetEmojiCategories({
    this.type,
  });

  /// [type] Type of emoji categories to return; pass null to get default emoji
  /// categories
  final EmojiCategoryType? type;

  static const String constructor = 'getEmojiCategories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetEmojiCategories &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(type)]);
}
