// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file is a notification sound
@immutable
class FileTypeNotificationSound extends FileType {
  const FileTypeNotificationSound();

  static const String constructor = 'fileTypeNotificationSound';

  static FileTypeNotificationSound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeNotificationSound();
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
      (other.runtimeType == runtimeType && other is FileTypeNotificationSound);

  @override
  int get hashCode => runtimeType.hashCode;
}
