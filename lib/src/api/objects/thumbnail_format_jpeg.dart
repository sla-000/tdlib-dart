// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The thumbnail is in JPEG format
@immutable
class ThumbnailFormatJpeg extends ThumbnailFormat {
  const ThumbnailFormatJpeg();

  static const String constructor = 'thumbnailFormatJpeg';

  static ThumbnailFormatJpeg? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatJpeg();
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
      (other.runtimeType == runtimeType && other is ThumbnailFormatJpeg);

  @override
  int get hashCode => runtimeType.hashCode;
}
