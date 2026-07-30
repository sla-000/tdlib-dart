// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a direct messages chat of a channel
@immutable
class LinkPreviewTypeDirectMessagesChat extends LinkPreviewType {
  const LinkPreviewTypeDirectMessagesChat({
    this.photo,
  });

  /// [photo] Photo of the channel chat; may be null
  final ChatPhoto? photo;

  static const String constructor = 'linkPreviewTypeDirectMessagesChat';

  static LinkPreviewTypeDirectMessagesChat? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeDirectMessagesChat(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeDirectMessagesChat &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
