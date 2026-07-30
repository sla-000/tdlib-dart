// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a document
@immutable
class FileTypeDocument extends FileType {
  const FileTypeDocument();

  static const String constructor = 'fileTypeDocument';

  static FileTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeDocument();
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
      (other.runtimeType == runtimeType && other is FileTypeDocument);

  @override
  int get hashCode => runtimeType.hashCode;
}
