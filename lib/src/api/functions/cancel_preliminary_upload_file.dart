// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Stops the preliminary uploading of a file. Supported only for files
/// uploaded by using preliminaryUploadFile
/// Returns [Ok]
@immutable
class CancelPreliminaryUploadFile extends TdFunction {
  const CancelPreliminaryUploadFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to stop uploading
  final int fileId;

  static const String constructor = 'cancelPreliminaryUploadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CancelPreliminaryUploadFile &&
          const DeepCollectionEquality().equals(other.fileId, fileId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileId)]);
}
