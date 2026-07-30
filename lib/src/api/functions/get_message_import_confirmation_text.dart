// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a confirmation text to be shown to the user before starting
/// message import
/// Returns [Text]
@immutable
class GetMessageImportConfirmationText extends TdFunction {
  const GetMessageImportConfirmationText({
    required this.chatId,
  });

  /// [chatId] Identifier of a chat to which the messages will be imported. It
  /// must be an identifier of a private chat with a mutual contact or an
  /// identifier of a supergroup chat with can_change_info member right
  final int chatId;

  static const String constructor = 'getMessageImportConfirmationText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessageImportConfirmationText &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
