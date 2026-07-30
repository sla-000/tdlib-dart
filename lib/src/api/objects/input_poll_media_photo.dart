import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
