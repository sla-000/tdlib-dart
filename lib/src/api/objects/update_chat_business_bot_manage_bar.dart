// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The bar for managing business bot was changed in a chat
@immutable
class UpdateChatBusinessBotManageBar extends Update {
  const UpdateChatBusinessBotManageBar({
    required this.chatId,
    this.businessBotManageBar,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [businessBotManageBar] The new value of the business bot manage bar; may
  /// be null
  final BusinessBotManageBar? businessBotManageBar;

  static const String constructor = 'updateChatBusinessBotManageBar';

  static UpdateChatBusinessBotManageBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBusinessBotManageBar(
      chatId: (json['chat_id'] as int?) ?? 0,
      businessBotManageBar: BusinessBotManageBar.fromJson(
          json['business_bot_manage_bar'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'business_bot_manage_bar': businessBotManageBar?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatBusinessBotManageBar &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.businessBotManageBar, businessBotManageBar));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(businessBotManageBar)
      ]);
}
