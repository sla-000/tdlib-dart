// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the emoji status of a user; for bots only
/// Returns [Ok]
@immutable
class SetUserEmojiStatus extends TdFunction {
  const SetUserEmojiStatus({
    required this.userId,
    this.emojiStatus,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  static const String constructor = 'setUserEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'emoji_status': emojiStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUserEmojiStatus &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.emojiStatus, emojiStatus));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(emojiStatus)
      ]);
}
