// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is hidden until the invoice is paid
@immutable
class PaidMediaPreview extends PaidMedia {
  const PaidMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
  });

  /// [width] Media width; 0 if unknown
  final int width;

  /// [height] Media height; 0 if unknown
  final int height;

  /// [duration] Media duration, in seconds; 0 if unknown
  final int duration;

  /// [minithumbnail] Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  static const String constructor = 'paidMediaPreview';

  static PaidMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaPreview(
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      duration: (json['duration'] as int?) ?? 0,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'width': width,
        'height': height,
        'duration': duration,
        'minithumbnail': minithumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaidMediaPreview &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(minithumbnail)
      ]);
}
