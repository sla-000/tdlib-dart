// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat or user profile photos
@immutable
class ChatPhotos extends TdObject {
  const ChatPhotos({
    required this.totalCount,
    required this.photos,
  });

  /// [totalCount] Total number of photos
  final int totalCount;

  /// [photos] List of photos
  final List<ChatPhoto> photos;

  static const String constructor = 'chatPhotos';

  static ChatPhotos? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotos(
      totalCount: (json['total_count'] as int?) ?? 0,
      photos: List<ChatPhoto>.from(
          ((json['photos'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatPhoto.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'photos': photos.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatPhotos &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.photos, photos));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(photos)
      ]);
}
