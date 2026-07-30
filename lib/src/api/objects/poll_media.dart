// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the media in a poll
@immutable
abstract class PollMedia extends TdObject {
  const PollMedia();

  static const String constructor = 'pollMedia';

  /// Inherited by:
  /// [PollMediaAnimation]
  /// [PollMediaAudio]
  /// [PollMediaDocument]
  /// [PollMediaLink]
  /// [PollMediaLocation]
  /// [PollMediaPhoto]
  /// [PollMediaSticker]
  /// [PollMediaVenue]
  /// [PollMediaVideo]
  static PollMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollMediaAnimation.constructor:
        return PollMediaAnimation.fromJson(json);
      case PollMediaAudio.constructor:
        return PollMediaAudio.fromJson(json);
      case PollMediaDocument.constructor:
        return PollMediaDocument.fromJson(json);
      case PollMediaLink.constructor:
        return PollMediaLink.fromJson(json);
      case PollMediaLocation.constructor:
        return PollMediaLocation.fromJson(json);
      case PollMediaPhoto.constructor:
        return PollMediaPhoto.fromJson(json);
      case PollMediaSticker.constructor:
        return PollMediaSticker.fromJson(json);
      case PollMediaVenue.constructor:
        return PollMediaVenue.fromJson(json);
      case PollMediaVideo.constructor:
        return PollMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PollMedia);

  @override
  int get hashCode => runtimeType.hashCode;
}
