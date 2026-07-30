// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a text composition style
@immutable
class LinkPreviewTypeTextCompositionStyle extends LinkPreviewType {
  const LinkPreviewTypeTextCompositionStyle({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style;
  /// 0 if none
  final int customEmojiId;

  static const String constructor = 'linkPreviewTypeTextCompositionStyle';

  static LinkPreviewTypeTextCompositionStyle? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeTextCompositionStyle(
      customEmojiId: (json['custom_emoji_id'] is int
              ? json['custom_emoji_id'] as int
              : int.tryParse(json['custom_emoji_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeTextCompositionStyle &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(customEmojiId)]);
}
