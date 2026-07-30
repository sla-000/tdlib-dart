// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is a photo. The photo must be at most 10 MB in size. The photo's
/// width and height must not exceed 10000 in total. Width and height ratio
/// must be at most 20
@immutable
class InputPaidMediaTypePhoto extends InputPaidMediaType {
  const InputPaidMediaTypePhoto({
    this.video,
  });

  /// [video] Video of the live photo; pass null if the photo isn't a live photo
  final InputFile? video;

  static const String constructor = 'inputPaidMediaTypePhoto';

  static InputPaidMediaTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMediaTypePhoto(
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPaidMediaTypePhoto &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(video)]);
}
