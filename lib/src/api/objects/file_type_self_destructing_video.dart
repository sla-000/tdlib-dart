// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a self-destructing video in a private chat
@immutable
class FileTypeSelfDestructingVideo extends FileType {
  const FileTypeSelfDestructingVideo();

  static const String constructor = 'fileTypeSelfDestructingVideo';

  static FileTypeSelfDestructingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVideo();
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
          other is FileTypeSelfDestructingVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
