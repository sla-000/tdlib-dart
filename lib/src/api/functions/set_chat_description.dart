// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes information about a chat. Available for basic groups, supergroups,
/// and channels. Requires can_change_info member right
/// Returns [Ok]
@immutable
class SetChatDescription extends TdFunction {
  const SetChatDescription({
    required this.chatId,
    required this.description,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// param_[description] New chat description; 0-255 characters
  final String description;

  static const String constructor = 'setChatDescription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatDescription &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(description)
      ]);
}
