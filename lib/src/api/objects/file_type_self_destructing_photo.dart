// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a self-destructing photo in a private chat
@immutable
class FileTypeSelfDestructingPhoto extends FileType {
  const FileTypeSelfDestructingPhoto();

  static const String constructor = 'fileTypeSelfDestructingPhoto';

  static FileTypeSelfDestructingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingPhoto();
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
          other is FileTypeSelfDestructingPhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
