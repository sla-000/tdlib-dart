// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns unique emoji that correspond to stickers to be found by the
/// getStickers(sticker_type, query, 1000000, chat_id)
/// Returns [Emojis]
@immutable
class GetAllStickerEmojis extends TdFunction {
  const GetAllStickerEmojis({
    required this.stickerType,
    required this.query,
    required this.chatId,
    required this.returnOnlyMainEmoji,
  });

  /// [stickerType] Type of the stickers to search for
  final StickerType stickerType;

  /// [query] Search query
  final String query;

  /// [chatId] Chat identifier for which to find stickers
  final int chatId;

  /// [returnOnlyMainEmoji] Pass true if only main emoji for each found sticker
  /// must be included in the result
  final bool returnOnlyMainEmoji;

  static const String constructor = 'getAllStickerEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        'chat_id': chatId,
        'return_only_main_emoji': returnOnlyMainEmoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetAllStickerEmojis &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.returnOnlyMainEmoji, returnOnlyMainEmoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(returnOnlyMainEmoji)
      ]);
}
