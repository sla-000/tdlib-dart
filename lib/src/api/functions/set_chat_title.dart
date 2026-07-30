// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the chat title. Supported only for basic groups, supergroups and
/// channels. Requires can_change_info member right
/// Returns [Ok]
@immutable
class SetChatTitle extends TdFunction {
  const SetChatTitle({
    required this.chatId,
    required this.title,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] New title of the chat; 1-128 characters
  final String title;

  static const String constructor = 'setChatTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatTitle &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(title)
      ]);
}
