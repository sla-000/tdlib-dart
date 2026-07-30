// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the message or the story to be replied
@immutable
abstract class InputMessageReplyTo extends TdObject {
  const InputMessageReplyTo();

  static const String constructor = 'inputMessageReplyTo';

  /// Inherited by:
  /// [InputMessageReplyToEphemeralMessage]
  /// [InputMessageReplyToExternalMessage]
  /// [InputMessageReplyToMessage]
  /// [InputMessageReplyToStory]
  static InputMessageReplyTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputMessageReplyToEphemeralMessage.constructor:
        return InputMessageReplyToEphemeralMessage.fromJson(json);
      case InputMessageReplyToExternalMessage.constructor:
        return InputMessageReplyToExternalMessage.fromJson(json);
      case InputMessageReplyToMessage.constructor:
        return InputMessageReplyToMessage.fromJson(json);
      case InputMessageReplyToStory.constructor:
        return InputMessageReplyToStory.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputMessageReplyTo);

  @override
  int get hashCode => runtimeType.hashCode;
}
