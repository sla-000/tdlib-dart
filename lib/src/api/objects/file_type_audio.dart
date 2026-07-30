// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is an audio file
@immutable
class FileTypeAudio extends FileType {
  const FileTypeAudio();

  static const String constructor = 'fileTypeAudio';

  static FileTypeAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAudio();
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
      (other.runtimeType == runtimeType && other is FileTypeAudio);

  @override
  int get hashCode => runtimeType.hashCode;
}
