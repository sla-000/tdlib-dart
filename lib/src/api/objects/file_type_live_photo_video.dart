import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
