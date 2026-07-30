// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of emoji statuses
@immutable
class EmojiStatuses extends TdObject {
  const EmojiStatuses({
    required this.emojiStatuses,
  });

  /// [emojiStatuses] The list of emoji statuses identifiers
  final List<EmojiStatus> emojiStatuses;

  static const String constructor = 'emojiStatuses';

  static EmojiStatuses? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatuses(
      emojiStatuses: List<EmojiStatus>.from(((json['emoji_statuses']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => EmojiStatus.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_statuses': emojiStatuses.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiStatuses &&
          const DeepCollectionEquality()
              .equals(other.emojiStatuses, emojiStatuses));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emojiStatuses)]);
}
