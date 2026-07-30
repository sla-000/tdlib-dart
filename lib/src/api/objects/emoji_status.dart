// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an emoji to be shown instead of the Telegram Premium badge
@immutable
class EmojiStatus extends TdObject {
  const EmojiStatus({
    required this.type,
    required this.expirationDate,
  });

  /// [type] Type of the emoji status
  final EmojiStatusType type;

  /// [expirationDate] Point in time (Unix timestamp) when the status will
  /// expire; 0 if never
  final int expirationDate;

  static const String constructor = 'emojiStatus';

  static EmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatus(
      type: EmojiStatusType.fromJson(json['type'] as Map<String, dynamic>?)!,
      expirationDate: (json['expiration_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'expiration_date': expirationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiStatus &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(expirationDate)
      ]);
}
