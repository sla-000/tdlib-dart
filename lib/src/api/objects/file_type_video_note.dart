// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a video note
@immutable
class FileTypeVideoNote extends FileType {
  const FileTypeVideoNote();

  static const String constructor = 'fileTypeVideoNote';

  static FileTypeVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideoNote();
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
      (other.runtimeType == runtimeType && other is FileTypeVideoNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
