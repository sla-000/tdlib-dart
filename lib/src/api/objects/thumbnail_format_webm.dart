// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The thumbnail is in WEBM format. It will be used only for sticker sets
@immutable
class ThumbnailFormatWebm extends ThumbnailFormat {
  const ThumbnailFormatWebm();

  static const String constructor = 'thumbnailFormatWebm';

  static ThumbnailFormatWebm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebm();
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
      (other.runtimeType == runtimeType && other is ThumbnailFormatWebm);

  @override
  int get hashCode => runtimeType.hashCode;
}
