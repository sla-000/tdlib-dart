// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes one answer option of a poll to be created
@immutable
class InputPollOption extends TdObject {
  const InputPollOption({
    required this.text,
    this.media,
  });

  /// [text] Option text; 1-100 characters. Only custom emoji entities are
  /// allowed to be added and only by Premium users
  final FormattedText text;

  /// [media] Option media; pass null if none; ignored in addPollOption. Must be
  /// one of the following types: inputPollMediaAnimation, inputPollMediaLink,
  /// inputPollMediaLocation, inputPollMediaPhoto, inputPollMediaSticker,
  /// inputPollMediaVenue, or inputPollMediaVideo without caption
  final InputPollMedia? media;

  static const String constructor = 'inputPollOption';

  static InputPollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollOption(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      media: InputPollMedia.fromJson(json['media'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'media': media?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollOption &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.media, media));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(media)
      ]);
}
