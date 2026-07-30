// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class PushMessageContentPhoto extends PushMessageContent {
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [photo] Message content; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final String caption;

  /// [isSecret] True, if the photo is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPhoto';

  static PushMessageContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      caption: (json['caption'] as String?) ?? '',
      isSecret: (json['is_secret'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'caption': caption,
        'is_secret': isSecret,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality().equals(other.isSecret, isSecret) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(isSecret),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
