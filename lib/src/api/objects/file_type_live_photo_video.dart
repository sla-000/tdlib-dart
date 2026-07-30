// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a video for a live photo
@immutable
class FileTypeLivePhotoVideo extends FileType {
  const FileTypeLivePhotoVideo();

  static const String constructor = 'fileTypeLivePhotoVideo';

  static FileTypeLivePhotoVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeLivePhotoVideo();
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
      (other.runtimeType == runtimeType && other is FileTypeLivePhotoVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
