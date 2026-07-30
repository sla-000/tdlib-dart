import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a poll media to send
@immutable
abstract class InputPollMedia extends TdObject {
  const InputPollMedia();

  static const String constructor = 'inputPollMedia';

  /// Inherited by:
  /// [InputPollMediaAnimation]
  /// [InputPollMediaAudio]
  /// [InputPollMediaDocument]
  /// [InputPollMediaLink]
  /// [InputPollMediaLocation]
  /// [InputPollMediaPhoto]
  /// [InputPollMediaSticker]
  /// [InputPollMediaVenue]
  /// [InputPollMediaVideo]
  static InputPollMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPollMediaAnimation.constructor:
        return InputPollMediaAnimation.fromJson(json);
      case InputPollMediaAudio.constructor:
        return InputPollMediaAudio.fromJson(json);
      case InputPollMediaDocument.constructor:
        return InputPollMediaDocument.fromJson(json);
      case InputPollMediaLink.constructor:
        return InputPollMediaLink.fromJson(json);
      case InputPollMediaLocation.constructor:
        return InputPollMediaLocation.fromJson(json);
      case InputPollMediaPhoto.constructor:
        return InputPollMediaPhoto.fromJson(json);
      case InputPollMediaSticker.constructor:
        return InputPollMediaSticker.fromJson(json);
      case InputPollMediaVenue.constructor:
        return InputPollMediaVenue.fromJson(json);
      case InputPollMediaVideo.constructor:
        return InputPollMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
