// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a video published as a story
@immutable
class FileTypeVideoStory extends FileType {
  const FileTypeVideoStory();

  static const String constructor = 'fileTypeVideoStory';

  static FileTypeVideoStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideoStory();
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
      (other.runtimeType == runtimeType && other is FileTypeVideoStory);

  @override
  int get hashCode => runtimeType.hashCode;
}
