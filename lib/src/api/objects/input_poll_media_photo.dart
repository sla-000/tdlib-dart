// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo
@immutable
class InputPollMediaPhoto extends InputPollMedia {
  const InputPollMediaPhoto({
    required this.photo,
  });

  /// [photo] Photo to be sent
  final InputPhoto photo;

  static const String constructor = 'inputPollMediaPhoto';

  static InputPollMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaPhoto(
      photo: InputPhoto.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollMediaPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
