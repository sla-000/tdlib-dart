// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An updated chat photo
@immutable
class MessageChatChangePhoto extends MessageContent {
  const MessageChatChangePhoto({
    required this.photo,
  });

  /// [photo] New chat photo
  final ChatPhoto photo;

  static const String constructor = 'messageChatChangePhoto';

  static MessageChatChangePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangePhoto(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatChangePhoto &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
