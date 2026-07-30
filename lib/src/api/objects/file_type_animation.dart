// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is an animation
@immutable
class FileTypeAnimation extends FileType {
  const FileTypeAnimation();

  static const String constructor = 'fileTypeAnimation';

  static FileTypeAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAnimation();
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
      (other.runtimeType == runtimeType && other is FileTypeAnimation);

  @override
  int get hashCode => runtimeType.hashCode;
}
