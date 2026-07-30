// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat themes based on upgraded gifts
@immutable
class GiftChatThemes extends TdObject {
  const GiftChatThemes({
    required this.themes,
    required this.nextOffset,
  });

  /// [themes] A list of chat themes
  final List<GiftChatTheme> themes;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'giftChatThemes';

  static GiftChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftChatThemes(
      themes: List<GiftChatTheme>.from(((json['themes'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => GiftChatTheme.fromJson(item as Map<String, dynamic>?))
          .toList()),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'themes': themes.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftChatThemes &&
          const DeepCollectionEquality().equals(other.themes, themes) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(themes),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
