import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the ability of users to save, forward, or copy chat content.
/// Requires owner privileges in basic groups, supergroups and channels.
/// Requires Telegram Premium to enable protected content in private chats.
/// Not available in Saved Messages and private chats with bots or support
/// accounts
/// Returns [Ok]
@immutable
class ToggleChatHasProtectedContent extends TdFunction {
  const ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String constructor = 'toggleChatHasProtectedContent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'has_protected_content': hasProtectedContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
