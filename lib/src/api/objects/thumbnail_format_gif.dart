// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The thumbnail is in static GIF format. It will be used only for some bot
/// inline query results
@immutable
class ThumbnailFormatGif extends ThumbnailFormat {
  const ThumbnailFormatGif();

  static const String constructor = 'thumbnailFormatGif';

  static ThumbnailFormatGif? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatGif();
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
      (other.runtimeType == runtimeType && other is ThumbnailFormatGif);

  @override
  int get hashCode => runtimeType.hashCode;
}
