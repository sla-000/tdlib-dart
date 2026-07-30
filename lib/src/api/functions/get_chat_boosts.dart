// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of boosts applied to a chat; requires administrator
/// rights in the chat
/// Returns [FoundChatBoosts]
@immutable
class GetChatBoosts extends TdFunction {
  const GetChatBoosts({
    required this.chatId,
    required this.onlyGiftCodes,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlyGiftCodes] Pass true to receive only boosts received from gift codes
  /// and giveaways created by the chat
  final bool onlyGiftCodes;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of boosts to be returned; up to 100. For
  /// optimal performance, the number of returned boosts can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getChatBoosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'only_gift_codes': onlyGiftCodes,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatBoosts &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.onlyGiftCodes, onlyGiftCodes) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(onlyGiftCodes),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
