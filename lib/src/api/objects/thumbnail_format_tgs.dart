// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The thumbnail is in TGS format. It will be used only for sticker sets
@immutable
class ThumbnailFormatTgs extends ThumbnailFormat {
  const ThumbnailFormatTgs();

  static const String constructor = 'thumbnailFormatTgs';

  static ThumbnailFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatTgs();
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
      (other.runtimeType == runtimeType && other is ThumbnailFormatTgs);

  @override
  int get hashCode => runtimeType.hashCode;
}
