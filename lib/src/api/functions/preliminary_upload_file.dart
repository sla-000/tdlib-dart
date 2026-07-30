// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Preliminarily uploads a file to the cloud before sending it in a message,
/// which can be useful for uploading of being recorded voice and video notes.
/// In all other cases there is no need to preliminary upload a file. Updates
/// updateFile will be used to notify about upload progress. The upload will
/// not be completed until the file is sent in a message
/// Returns [File]
@immutable
class PreliminaryUploadFile extends TdFunction {
  const PreliminaryUploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });

  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the
  /// earlier the file will be uploaded. If the priorities of two files are
  /// equal, then the first one for which preliminaryUploadFile was called will
  /// be uploaded first
  final int priority;

  static const String constructor = 'preliminaryUploadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file': file.toJson(),
        'file_type': fileType?.toJson(),
        'priority': priority,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PreliminaryUploadFile &&
          const DeepCollectionEquality().equals(other.file, file) &&
          const DeepCollectionEquality().equals(other.fileType, fileType) &&
          const DeepCollectionEquality().equals(other.priority, priority));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(file),
        const DeepCollectionEquality().hash(fileType),
        const DeepCollectionEquality().hash(priority)
      ]);
}
