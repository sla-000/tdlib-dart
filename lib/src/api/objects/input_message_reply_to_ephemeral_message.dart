// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an ephemeral message to be replied; for bots only
@immutable
class InputMessageReplyToEphemeralMessage extends InputMessageReplyTo {
  const InputMessageReplyToEphemeralMessage({
    required this.ephemeralMessageId,
  });

  /// [ephemeralMessageId] The identifier of the ephemeral message to be replied
  final int ephemeralMessageId;

  static const String constructor = 'inputMessageReplyToEphemeralMessage';

  static InputMessageReplyToEphemeralMessage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToEphemeralMessage(
      ephemeralMessageId: json['ephemeral_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ephemeral_message_id': ephemeralMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageReplyToEphemeralMessage &&
          const DeepCollectionEquality()
              .equals(other.ephemeralMessageId, ephemeralMessageId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(ephemeralMessageId)]);
}
