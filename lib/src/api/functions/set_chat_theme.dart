// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the chat theme. Supported only in private and secret chats
/// Returns [Ok]
@immutable
class SetChatTheme extends TdFunction {
  const SetChatTheme({
    required this.chatId,
    this.theme,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [theme] New chat theme; pass null to return the default theme
  final InputChatTheme? theme;

  static const String constructor = 'setChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatTheme &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.theme, theme));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(theme)
      ]);
}
