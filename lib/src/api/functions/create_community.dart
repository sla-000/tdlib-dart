// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a new community for the given chat. Returns identifier of the
/// created community
/// Returns [CommunityId]
@immutable
class CreateCommunity extends TdFunction {
  const CreateCommunity({
    required this.name,
    required this.chatId,
    required this.isChatHidden,
  });

  /// [name] Name of the new community
  final String name;

  /// [chatId] Identifier of the chat in the community; only chats with owned
  /// bots and owned basic group, supergroup and channel chats are allowed;
  /// basic group chats will be automatically upgraded to supergroup chats
  final int chatId;

  /// [isChatHidden] Pass true if the chat will be visible only to
  /// administrators of the community
  final bool isChatHidden;

  static const String constructor = 'createCommunity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'chat_id': chatId,
        'is_chat_hidden': isChatHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateCommunity &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.isChatHidden, isChatHidden));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(isChatHidden)
      ]);
}
