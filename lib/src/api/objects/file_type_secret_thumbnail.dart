// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a thumbnail of a file from a secret chat
@immutable
class FileTypeSecretThumbnail extends FileType {
  const FileTypeSecretThumbnail();

  static const String constructor = 'fileTypeSecretThumbnail';

  static FileTypeSecretThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecretThumbnail();
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
      (other.runtimeType == runtimeType && other is FileTypeSecretThumbnail);

  @override
  int get hashCode => runtimeType.hashCode;
}
