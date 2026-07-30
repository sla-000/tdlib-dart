// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a wallpaper or a background pattern
@immutable
class FileTypeWallpaper extends FileType {
  const FileTypeWallpaper();

  static const String constructor = 'fileTypeWallpaper';

  static FileTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeWallpaper();
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
      (other.runtimeType == runtimeType && other is FileTypeWallpaper);

  @override
  int get hashCode => runtimeType.hashCode;
}
