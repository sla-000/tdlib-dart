// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo
@immutable
class InputPageBlockPhoto extends InputPageBlock {
  const InputPageBlockPhoto({
    required this.photo,
    this.caption,
    required this.hasSpoiler,
  });

  /// [photo] The photo to be sent
  final InputPhoto photo;

  /// [caption] Photo caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockPhoto';

  static InputPageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockPhoto(
      photo: InputPhoto.fromJson(json['photo'] as Map<String, dynamic>?)!,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'caption': caption?.toJson(),
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(hasSpoiler)
      ]);
}
