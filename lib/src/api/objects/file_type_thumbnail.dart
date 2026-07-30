// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a thumbnail of another file
@immutable
class FileTypeThumbnail extends FileType {
  const FileTypeThumbnail();

  static const String constructor = 'fileTypeThumbnail';

  static FileTypeThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeThumbnail();
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
      (other.runtimeType == runtimeType && other is FileTypeThumbnail);

  @override
  int get hashCode => runtimeType.hashCode;
}
