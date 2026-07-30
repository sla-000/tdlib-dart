// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Thumbnail image of a very poor quality and low resolution
@immutable
class Minithumbnail extends TdObject {
  const Minithumbnail({
    required this.width,
    required this.height,
    required this.data,
  });

  /// [width] Thumbnail width, usually doesn't exceed 40
  final int width;

  /// [height] Thumbnail height, usually doesn't exceed 40
  final int height;

  /// [data] The thumbnail in JPEG format
  final String data;

  static const String constructor = 'minithumbnail';

  static Minithumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Minithumbnail(
      width: json['width'] as int,
      height: json['height'] as int,
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'width': width,
        'height': height,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Minithumbnail &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(data)
      ]);
}
