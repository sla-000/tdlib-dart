// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The thumbnail is in PNG format. It will be used only for background
/// patterns
@immutable
class ThumbnailFormatPng extends ThumbnailFormat {
  const ThumbnailFormatPng();

  static const String constructor = 'thumbnailFormatPng';

  static ThumbnailFormatPng? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatPng();
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
      (other.runtimeType == runtimeType && other is ThumbnailFormatPng);

  @override
  int get hashCode => runtimeType.hashCode;
}
