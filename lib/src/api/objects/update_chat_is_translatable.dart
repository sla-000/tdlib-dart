// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Translation of chat messages was enabled or disabled
@immutable
class UpdateChatIsTranslatable extends Update {
  const UpdateChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  static const String constructor = 'updateChatIsTranslatable';

  static UpdateChatIsTranslatable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsTranslatable(
      chatId: json['chat_id'] as int,
      isTranslatable: json['is_translatable'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_translatable': isTranslatable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatIsTranslatable &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.isTranslatable, isTranslatable));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(isTranslatable)
      ]);
}
