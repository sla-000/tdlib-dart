// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the emoji status of the current user; for Telegram Premium users
/// only
/// Returns [Ok]
@immutable
class SetEmojiStatus extends TdFunction {
  const SetEmojiStatus({
    this.emojiStatus,
  });

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  static const String constructor = 'setEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_status': emojiStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetEmojiStatus &&
          const DeepCollectionEquality()
              .equals(other.emojiStatus, emojiStatus));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emojiStatus)]);
}
