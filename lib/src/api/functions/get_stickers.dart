// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns stickers from the installed sticker sets that correspond to any of
/// the given emoji or can be found by sticker-specific keywords. If the query
/// is non-empty, then favorite, recently used or trending stickers may also
/// be returned
/// Returns [Stickers]
@immutable
class GetStickers extends TdFunction {
  const GetStickers({
    required this.stickerType,
    required this.query,
    required this.limit,
    required this.chatId,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [query] Search query; a space-separated list of emojis or a keyword
  /// prefix. If empty, returns all known installed stickers
  final String query;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// [chatId] Chat identifier for which to return stickers. Available custom
  /// emoji stickers may be different for different chats
  final int chatId;

  static const String constructor = 'getStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        'limit': limit,
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStickers &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.limit, limit) &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(limit),
        const DeepCollectionEquality().hash(chatId)
      ]);
}
