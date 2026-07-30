// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a self-destructing video for a live photo in a private chat
@immutable
class FileTypeSelfDestructingLivePhotoVideo extends FileType {
  const FileTypeSelfDestructingLivePhotoVideo();

  static const String constructor = 'fileTypeSelfDestructingLivePhotoVideo';

  static FileTypeSelfDestructingLivePhotoVideo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingLivePhotoVideo();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FileTypeSelfDestructingLivePhotoVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
