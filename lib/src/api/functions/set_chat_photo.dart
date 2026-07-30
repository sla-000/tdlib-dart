// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the photo of a chat. Supported only for basic groups, supergroups
/// and channels. Requires can_change_info member right
/// Returns [Ok]
@immutable
class SetChatPhoto extends TdFunction {
  const SetChatPhoto({
    required this.chatId,
    this.photo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] New chat photo; pass null to delete the chat photo
  final InputChatPhoto? photo;

  static const String constructor = 'setChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatPhoto &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(photo)
      ]);
}
