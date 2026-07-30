// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Completely deletes a sticker set
/// Returns [Ok]
@immutable
class DeleteStickerSet extends TdFunction {
  const DeleteStickerSet({
    required this.name,
  });

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  static const String constructor = 'deleteStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteStickerSet &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
