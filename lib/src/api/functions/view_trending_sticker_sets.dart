// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs the server that some trending sticker sets have been viewed by the
/// user
/// Returns [Ok]
@immutable
class ViewTrendingStickerSets extends TdFunction {
  const ViewTrendingStickerSets({
    required this.stickerSetIds,
  });

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;

  static const String constructor = 'viewTrendingStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ViewTrendingStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerSetIds, stickerSetIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerSetIds)]);
}
